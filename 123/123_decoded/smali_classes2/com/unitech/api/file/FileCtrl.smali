.class public Lcom/unitech/api/file/FileCtrl;
.super Ljava/lang/Object;
.source "FileCtrl.java"


# static fields
.field private static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.unitech.dmservice.action.filemanager"

.field public static final BUNDLE_DATA:Ljava/lang/String; = "Data"

.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final BUNDLE_FILE_STREAM_ID:Ljava/lang/String; = "FileStreamID"

.field public static final BUNDLE_PARCEL_FILE_DESCRIPTOR:Ljava/lang/String; = "ParcelFileDescriptor"

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF-8"

.field private static FLASH_STORAGE:Ljava/lang/String; = "FLASH"

.field private static INTERNAL_STORAGE:Ljava/lang/String; = "/sdcard"

.field private static final PKG_API_SERVICE:Ljava/lang/String; = "com.unitech.dmservice"

.field public static final RESULT_CODE_ERROR:I = 0x1

.field public static final RESULT_CODE_SUCCESS:I = 0x0

.field private static SDCARD_PATH:Ljava/lang/String; = "SD"

.field private static final TAG:Ljava/lang/String; = "UnitechSDK.FileCtrl"

.field private static USB_PATH:Ljava/lang/String; = "USB"

.field private static mInstance:Lcom/unitech/api/file/FileCtrl;

.field private static mServiceHandler:Lcom/unitech/api/util/ServiceHandler;


# instance fields
.field private final ANDROID_Q:Z

.field private mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

.field private mContext:Landroid/content/Context;

.field private mServiceChecked:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/unitech/api/file/FileCtrl;->mServiceChecked:I

    .line 1049
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/unitech/api/file/FileCtrl;->ANDROID_Q:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/file/FileCtrl;->mContext:Landroid/content/Context;

    .line 61
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    if-nez v1, :cond_1

    .line 62
    new-instance v1, Lcom/unitech/api/util/ServiceHandler;

    .line 63
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;

    move-result-object v2

    const-string v3, "com.unitech.dmservice"

    const-string v4, "com.unitech.dmservice.action.filemanager"

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/unitech/api/util/ServiceHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;)V

    sput-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    .line 65
    :cond_1
    iget p1, p0, Lcom/unitech/api/file/FileCtrl;->mServiceChecked:I

    if-ne p1, v0, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->checkServiceIsInstalled()V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/unitech/api/file/FileCtrl;Lcom/unitech/dmservice/IFileManagerAidl;)Lcom/unitech/dmservice/IFileManagerAidl;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    return-object p1
.end method

.method private checkServiceIsInstalled()V
    .locals 5

    .line 103
    iget v0, p0, Lcom/unitech/api/file/FileCtrl;->mServiceChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/file/FileCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 113
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

    .line 114
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
    const-string v2, "UnitechSDK.FileCtrl"

    if-eqz v0, :cond_3

    const-string v0, "package com.unitech.dmservice is found."

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput v3, p0, Lcom/unitech/api/file/FileCtrl;->mServiceChecked:I

    goto :goto_1

    :cond_3
    const-string v0, "package com.unitech.dmservice is not found"

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput v1, p0, Lcom/unitech/api/file/FileCtrl;->mServiceChecked:I

    :goto_1
    return-void
.end method

.method private createFolders(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filepath"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 1076
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 1079
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1083
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    const-string v7, "createFolders: File %s is existed"

    .line 1085
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnitechSDK.FileCtrl"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
    .locals 1

    .line 71
    new-instance v0, Lcom/unitech/api/file/FileCtrl$1;

    invoke-direct {v0, p0}, Lcom/unitech/api/file/FileCtrl$1;-><init>(Lcom/unitech/api/file/FileCtrl;)V

    return-object v0
.end method

.method private getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1054
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usb/"

    .line 1055
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unitech/api/file/FileCtrl;->USB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "sd/"

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unitech/api/file/FileCtrl;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "/"

    .line 1059
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "/sdcard"

    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1061
    iget-boolean v0, p0, Lcom/unitech/api/file/FileCtrl;->ANDROID_Q:Z

    if-eqz v0, :cond_3

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unitech/api/file/FileCtrl;->INTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1065
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "flash/"

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "flashstorage/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return-object p1

    .line 1068
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unitech/api/file/FileCtrl;->FLASH_STORAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mInstance:Lcom/unitech/api/file/FileCtrl;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/unitech/api/file/FileCtrl;

    invoke-direct {v0, p0}, Lcom/unitech/api/file/FileCtrl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unitech/api/file/FileCtrl;->mInstance:Lcom/unitech/api/file/FileCtrl;

    .line 139
    :cond_0
    sget-object p0, Lcom/unitech/api/file/FileCtrl;->mInstance:Lcom/unitech/api/file/FileCtrl;

    return-object p0
.end method

.method private pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 1096
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_1

    .line 1097
    invoke-virtual {p1, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 1098
    invoke-virtual {p2, v3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0xc8

    .line 1100
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 1107
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1109
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1114
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1116
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1104
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1107
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1109
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 1111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1114
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 1116
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    const/4 v2, 0x1

    :goto_4
    xor-int/lit8 p1, v2, 0x1

    return p1

    .line 1107
    :goto_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 1109
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 1111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1114
    :goto_6
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 1116
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1118
    :goto_7
    throw v0
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

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMsg"

    .line 145
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

    .line 150
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "errorMsg"

    .line 151
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private tryToBindService()Z
    .locals 1

    .line 156
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->bindService()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canRead(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, ""

    .line 948
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, canRead failed: path be empty."

    .line 949
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "/Android/data"

    .line 950
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/sdcard/Android/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/Android/obb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/sdcard/Android/obb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 953
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 954
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 956
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 958
    invoke-direct {p0, v3, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 963
    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 964
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    .line 967
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->canRead(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 969
    invoke-direct {p0, v3, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "The application is not allowed to read the file."

    .line 971
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 974
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 975
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 978
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_4
    :goto_1
    const-string p1, "FileCtrl, canRead failed: /Android/data or /Android/obb is not allowed for this operation."

    .line 951
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public canWrite(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, ""

    .line 904
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, canWrite failed: path be empty."

    .line 905
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "/Android/data"

    .line 906
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/sdcard/Android/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/Android/obb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/sdcard/Android/obb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 909
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 910
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 912
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 914
    invoke-direct {p0, v3, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 919
    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 920
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    .line 923
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->canWrite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 925
    invoke-direct {p0, v3, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "The application is not allowed to write the file."

    .line 927
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 930
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 931
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 934
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_4
    :goto_1
    const-string p1, "FileCtrl, canWrite failed: /Android/data or /Android/obb is not allowed for this operation."

    .line 907
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public closeFileStream(J)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileStreamId"
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, p1, p2}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "closeFileStream successful"

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const-string p2, "closeFileStream failed"

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromPath",
            "toPath"
        }
    .end annotation

    const-string v0, "ParcelFileDescriptor"

    .line 397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, copyFile failed: fromPath cannot be empty."

    .line 398
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 400
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "FileCtrl, copyFile failed: toPath cannot be empty."

    .line 401
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 403
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "FileCtrl, copyFile failed: fromPath is the same with toPath."

    .line 404
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x0

    const-string v3, "copyFile successful"

    .line 406
    invoke-direct {p0, v1, v3}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    .line 407
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 410
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 411
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v1

    .line 412
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v7, v2

    const-string v6, "copyFile: File %s existed, remove result: %b"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnitechSDK.FileCtrl"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 414
    :cond_3
    invoke-direct {p0, p2}, Lcom/unitech/api/file/FileCtrl;->createFolders(Ljava/lang/String;)V

    .line 419
    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 420
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 421
    invoke-direct {p0, v6, v4}, Lcom/unitech/api/file/FileCtrl;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 423
    invoke-direct {p0, v1, v3}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v3, "copyFile failed"

    .line 425
    invoke-direct {p0, v2, v3}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception v3

    .line 431
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 429
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 435
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 436
    sget-object v3, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v3

    .line 438
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "errorCode"

    .line 439
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    const-string p1, "copyFile failed: fromPath is not existed."

    .line 440
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 442
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 443
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 444
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 445
    invoke-virtual {p0, p2}, Lcom/unitech/api/file/FileCtrl;->createFile(Ljava/lang/String;)Landroid/os/Bundle;

    .line 446
    invoke-virtual {p0, p2, v1}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 448
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/16 p1, 0x400

    new-array v0, p1, [B

    .line 451
    :goto_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_7

    .line 452
    invoke-virtual {v5, v0, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 453
    invoke-virtual {p2, v0, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 455
    :cond_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 456
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    const-string p1, "copyFile success"

    .line 457
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 463
    :goto_4
    sget-object p2, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public createFile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "createFile successful"

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, createFile failed: path be empty."

    .line 476
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 478
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 479
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "createFile failed"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "createFile: File %s existed"

    .line 481
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK.FileCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 485
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/unitech/api/file/FileCtrl;->createFolders(Ljava/lang/String;)V

    .line 489
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 490
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 499
    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 500
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v6

    .line 503
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->createFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 505
    invoke-direct {p0, v5, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 507
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 514
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v6, v7}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filepath",
            "keepContents"
        }
    .end annotation

    const-string v0, "ParcelFileDescriptor"

    const-string v1, "createFileStream failed"

    const-string v2, "createFileStream successful"

    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string p1, "FileCtrl, createFileStream failed: filepath be empty."

    .line 576
    invoke-direct {p0, v4, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 579
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v7, "Create PFD from %s"

    .line 580
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "UnitechSDK.FileCtrl"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/high16 v5, 0x3a000000

    goto :goto_0

    :cond_1
    const/high16 v5, 0x3c000000    # 0.0078125f

    .line 595
    :goto_0
    :try_start_0
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 597
    invoke-direct {p0, v4, v1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    .line 599
    :cond_2
    invoke-direct {p0, v6, v2}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 600
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v5

    :goto_1
    return-object p1

    .line 606
    :catch_0
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 607
    sget-object v3, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v7

    .line 616
    :try_start_1
    iget-object v3, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v3, p1, p2}, Lcom/unitech/dmservice/IFileManagerAidl;->createParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_3

    .line 618
    invoke-direct {p0, v4, v1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_2

    .line 620
    :cond_3
    invoke-direct {p0, v6, v2}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 621
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "FileStreamID"

    .line 622
    invoke-virtual {p2, p1, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p2

    :goto_2
    return-object p1

    :catch_1
    move-exception p1

    .line 625
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public deleteFile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "deleteFile successful"

    .line 528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, deleteFile failed: path be empty."

    .line 529
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 531
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 533
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 535
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    invoke-direct {p0, v3, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 543
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 544
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    .line 547
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 549
    invoke-direct {p0, v3, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "deleteFile failed"

    .line 551
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 554
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 558
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public exists(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "%s exists"

    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, exists failed: path be empty."

    .line 663
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 665
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 666
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 668
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 670
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 675
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 676
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    .line 679
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 681
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "%s doesn\'t exist"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 683
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 686
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 690
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public getExternalStorageInfo()Landroid/os/Bundle;
    .locals 6

    const-string v0, "errorCode"

    .line 990
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 991
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 992
    sget-object v2, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v2}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    .line 994
    :try_start_0
    iget-object v4, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v4}, Lcom/unitech/dmservice/IFileManagerAidl;->getExternalStorageInfo()Landroid/os/Bundle;

    move-result-object v1

    const/4 v4, 0x0

    .line 995
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 998
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v5, 0x1

    .line 999
    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1002
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public isDirectory(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "%s is directory"

    .line 703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, isDirectory failed: path be empty."

    .line 704
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 706
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 707
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 709
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 711
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 716
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 717
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    .line 720
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->isDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 722
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "%s isn\'t directory"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 724
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 727
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 728
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 731
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public list(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "List"

    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string p1, "FileCtrl, list failed: path be empty."

    .line 806
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 808
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 809
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 810
    sget-object v4, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v4}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 813
    :try_start_0
    iget-object v8, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v8, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_1

    .line 815
    :try_start_1
    invoke-direct {p0, v7, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 816
    invoke-virtual {v2, v1, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v8, v6

    .line 821
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 825
    :cond_1
    :goto_1
    sget-object v9, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v9, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    .line 827
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 830
    array-length v4, v6

    if-lez v4, :cond_2

    .line 831
    invoke-direct {p0, v7, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 832
    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_2
    :goto_2
    if-nez v8, :cond_3

    if-nez v6, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v7

    const-string p1, "%s list = null"

    .line 838
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    .line 841
    array-length p1, v6

    array-length v0, v8

    if-le p1, v0, :cond_4

    .line 842
    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 844
    :cond_4
    invoke-virtual {v2, v1, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-object v2
.end method

.method public openFile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "UnitechSDK.FileCtrl"

    .line 745
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string p1, "FileCtrl, openFile failed: path be empty."

    .line 746
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "/Android/data"

    .line 747
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/sdcard/Android/data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/Android/obb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/sdcard/Android/obb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 750
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 753
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v5, p0, Lcom/unitech/api/file/FileCtrl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/unitech/api/file/FileCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 759
    iget-object v5, p0, Lcom/unitech/api/file/FileCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 761
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.VIEW"

    .line 762
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 765
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    iget-object v4, p0, Lcom/unitech/api/file/FileCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 767
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 771
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUri: file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is invalid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 775
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v4

    .line 778
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "file not exist"

    .line 779
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 782
    :cond_3
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1}, Lcom/unitech/dmservice/IFileManagerAidl;->openFile(Ljava/lang/String;)V

    .line 783
    invoke-direct {p0, v2, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 786
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 787
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 790
    :goto_0
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0, v4, v5}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1

    :cond_4
    :goto_1
    const-string p1, "FileCtrl, openFile failed: /Android/data or /Android/obb is not allowed for this operation."

    .line 748
    invoke-direct {p0, v3, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public pathConverter(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "errorCode"

    .line 1014
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, pathConverter failed: path be empty."

    .line 1015
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1016
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 1017
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1018
    sget-object v3, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v3}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v3

    .line 1020
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unitech/api/file/FileCtrl;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1021
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/sdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/storage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/mnt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v5, p1

    :cond_2
    const-string v6, "FLASH/"

    .line 1023
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    const-string v6, "USB/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SD/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_5

    const-string v8, "/"

    .line 1024
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v6, 0x1

    .line 1025
    :cond_5
    iget-object v8, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v8, v5}, Lcom/unitech/dmservice/IFileManagerAidl;->pathConverter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1026
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "REAL_PATH"

    .line 1027
    invoke-virtual {v1, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    const-string p1, "NOT_EXIST"

    .line 1032
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    :cond_7
    const-string p1, "No Changed"

    .line 1034
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1038
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1042
    :goto_2
    sget-object p1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v3, v4}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v1
.end method

.method public readFromFile(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "FileCtrl, readFromFile failed: path cannot be empty."

    .line 293
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 298
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 303
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    .line 305
    aget-object v6, v4, v5

    .line 306
    aget-object v4, v4, v1

    .line 308
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v8, :cond_1

    .line 318
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 319
    :try_start_2
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v7, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 320
    invoke-direct {p0, v8, v7}, Lcom/unitech/api/file/FileCtrl;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v8, v0

    .line 325
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v8, v0

    .line 323
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_1
    move-object v8, v0

    :goto_2
    const/4 v4, 0x0

    .line 328
    :goto_3
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v0, "Data"

    const-string v9, "readFromFile successful"

    const/16 v10, 0x400

    if-eqz v4, :cond_3

    .line 330
    :try_start_4
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-array v4, v10, [B

    .line 334
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_2

    .line 335
    invoke-virtual {p1, v4, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 336
    invoke-virtual {v7, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 338
    :cond_2
    invoke-direct {p0, v5, v9}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 339
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v8, p1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_a

    :catch_5
    move-exception p1

    goto :goto_9

    .line 342
    :cond_3
    :try_start_6
    iget-object v4, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v4, p1, v1}, Lcom/unitech/dmservice/IFileManagerAidl;->createParcelFileDescriptor(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 343
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-array p1, v10, [B

    .line 347
    :goto_5
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lez v6, :cond_4

    .line 348
    invoke-virtual {v4, p1, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 349
    invoke-virtual {v7, p1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 351
    :cond_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 352
    invoke-direct {p0, v5, v9}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 353
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_6
    move-exception p1

    .line 356
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    if-eqz v8, :cond_5

    .line 366
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 374
    :cond_5
    :goto_7
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_2
    move-exception p1

    move-object v7, v0

    :goto_8
    move-object v0, v8

    goto :goto_d

    :catch_9
    move-exception p1

    move-object v7, v0

    :goto_9
    move-object v0, v8

    goto :goto_a

    :catchall_3
    move-exception p1

    move-object v7, v0

    goto :goto_d

    :catch_a
    move-exception p1

    move-object v7, v0

    .line 361
    :goto_a
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v0, :cond_6

    .line 366
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_b
    if-eqz v7, :cond_7

    .line 374
    :try_start_c
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 381
    :cond_7
    :goto_c
    sget-object p1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4

    :catchall_4
    move-exception p1

    :goto_d
    if-eqz v0, :cond_8

    .line 366
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_e

    :catch_c
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_e
    if-eqz v7, :cond_9

    .line 374
    :try_start_e
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_f

    :catch_d
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    :cond_9
    :goto_f
    throw p1
.end method

.method public renameTo(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "newName"
        }
    .end annotation

    const-string v0, ""

    .line 859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "FileCtrl, renameTo failed: path be empty."

    .line 860
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 861
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "FileCtrl, renameTo failed: newName be empty."

    .line 862
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 864
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 865
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 868
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 875
    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 876
    sget-object v1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v1}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v5

    .line 879
    :try_start_1
    iget-object v1, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {v1, p1, p2}, Lcom/unitech/dmservice/IFileManagerAidl;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 881
    invoke-direct {p0, v4, v0}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "cannot rename file."

    .line 883
    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 886
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 887
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 890
    :goto_0
    sget-object p2, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v5, v6}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method

.method public writeToFile(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "content"
        }
    .end annotation

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "FileCtrl, writeToFile failed: path cannot be empty."

    .line 203
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "FileCtrl, writeToFile failed: content is null."

    .line 206
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 211
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    .line 213
    iget-object v0, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    new-array v5, v0, [Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 217
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    :catch_0
    move-exception v6

    .line 219
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    :goto_0
    aget-object v6, v5, v0

    .line 222
    aget-object v5, v5, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 229
    :try_start_3
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v7, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :try_start_4
    invoke-virtual {v7, p2}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    :catch_1
    move-exception p2

    .line 238
    :goto_1
    :try_start_6
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v7, v4

    goto :goto_8

    :catch_3
    move-exception p2

    move-object v7, v4

    .line 233
    :goto_2
    :try_start_7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 236
    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_3

    :catch_4
    move-exception p2

    goto :goto_1

    .line 241
    :goto_3
    :try_start_9
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v7, "UnitechSDK.FileCtrl"

    const-string v8, "writeToFile: File %s existed, remove result: %b"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v0

    .line 244
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 246
    :cond_2
    invoke-direct {p0, p1}, Lcom/unitech/api/file/FileCtrl;->createFolders(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 252
    :goto_4
    :try_start_a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 253
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p2, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 255
    invoke-direct {p0, p2, v5}, Lcom/unitech/api/file/FileCtrl;->pipe(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p2
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_6

    :catch_5
    move-exception p2

    .line 260
    :try_start_b
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception p2

    .line 258
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    const/4 p2, 0x0

    :goto_6
    if-nez p2, :cond_3

    .line 263
    iget-object p2, p0, Lcom/unitech/api/file/FileCtrl;->mAidl:Lcom/unitech/dmservice/IFileManagerAidl;

    invoke-interface {p2, p1, v6}, Lcom/unitech/dmservice/IFileManagerAidl;->writeToFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result p2

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "Write to file successful"

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_7

    :cond_4
    const-string p1, "Write to file failed"

    .line 267
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :goto_7
    move-object v4, p1

    goto :goto_a

    :catchall_1
    move-exception p1

    .line 236
    :goto_8
    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_9

    :catch_7
    move-exception p2

    .line 238
    :try_start_d
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    :goto_9
    throw p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :cond_5
    const-string p1, "FileManagerAidl is null"

    .line 274
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 277
    :goto_a
    sget-object p1, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p1, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object v4
.end method

.method public writeUTF8ToFile(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "content"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "FileCtrl, writeUTF8ToFile failed: path cannot be empty."

    .line 172
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "FileCtrl, writeUTF8ToFile failed: content is null."

    .line 175
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/unitech/api/file/FileCtrl;->tryToBindService()Z

    .line 179
    sget-object v0, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {v0}, Lcom/unitech/api/util/ServiceHandler;->getImmortalTicket()J

    move-result-wide v2

    :try_start_0
    const-string v0, "UTF-8"

    .line 182
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/unitech/api/file/FileCtrl;->writeToFile(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, "writeUTF8ToFile failed"

    .line 185
    invoke-direct {p0, v1, p1}, Lcom/unitech/api/file/FileCtrl;->setBundleResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 187
    :goto_0
    sget-object p2, Lcom/unitech/api/file/FileCtrl;->mServiceHandler:Lcom/unitech/api/util/ServiceHandler;

    invoke-virtual {p2, v2, v3}, Lcom/unitech/api/util/ServiceHandler;->releaseTicket(J)Z

    return-object p1
.end method
