.class public Lcom/unitech/api/file/helper/FileCtrlHelper;
.super Ljava/lang/Object;
.source "FileCtrlHelper.java"


# instance fields
.field private final BUNDLE_ERROR_CODE:Ljava/lang/String;

.field private final KEY_FILE_STREAM_ID:Ljava/lang/String;

.field private final KEY_PARCEL_FILE_DESCRIPTOR:Ljava/lang/String;

.field private final RESULT_CODE_SUCCESS:I

.field private final mFileCtrl:Lcom/unitech/api/file/FileCtrl;

.field private mFileStreamId:J


# direct methods
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ParcelFileDescriptor"

    .line 20
    iput-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->KEY_PARCEL_FILE_DESCRIPTOR:Ljava/lang/String;

    const-string v0, "FileStreamID"

    .line 21
    iput-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->KEY_FILE_STREAM_ID:Ljava/lang/String;

    const-string v0, "errorCode"

    .line 22
    iput-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->BUNDLE_ERROR_CODE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->RESULT_CODE_SUCCESS:I

    .line 29
    invoke-static {p1}, Lcom/unitech/api/file/FileCtrl;->getInstance(Landroid/content/Context;)Lcom/unitech/api/file/FileCtrl;

    move-result-object p1

    iput-object p1, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    .line 30
    invoke-direct {p0}, Lcom/unitech/api/file/helper/FileCtrlHelper;->resetFileStreamId()V

    return-void
.end method

.method private resetFileStreamId()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 51
    iput-wide v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileStreamId:J

    return-void
.end method


# virtual methods
.method public closeFileStream()V
    .locals 5

    .line 173
    iget-wide v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileStreamId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v2, v0, v1}, Lcom/unitech/api/file/FileCtrl;->closeFileStream(J)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    .line 179
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/unitech/api/file/helper/FileCtrlHelper;->resetFileStreamId()V

    :cond_1
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->exists(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->deleteFile(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0, p1}, Lcom/unitech/api/file/FileCtrl;->exists(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 125
    iget-wide v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileStreamId:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stream is opened. Maybe use another FileCtrlHelper"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 130
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid file path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "errorCode"

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    .line 143
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    const-string v0, "ParcelFileDescriptor"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string v1, "FileStreamID"

    .line 150
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileStreamId:J

    .line 151
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method

.method public getOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "keepContents"
        }
    .end annotation

    .line 155
    iget-wide v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileStreamId:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "File stream is opening. Maybe use another FileCtrlHelper"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileCtrl:Lcom/unitech/api/file/FileCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/unitech/api/file/FileCtrl;->createFileStream(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    return-object v2

    :cond_1
    const-string p2, "ParcelFileDescriptor"

    .line 167
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    const-string v0, "FileStreamID"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unitech/api/file/helper/FileCtrlHelper;->mFileStreamId:J

    .line 169
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/unitech/api/file/helper/FileHelper;

    invoke-direct {v0}, Lcom/unitech/api/file/helper/FileHelper;-><init>()V

    .line 94
    invoke-virtual {v0, p1}, Lcom/unitech/api/file/helper/FileHelper;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/unitech/api/file/helper/FileCtrlHelper;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 107
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :goto_0
    const/4 v4, 0x0

    .line 111
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 112
    invoke-virtual {p1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 116
    invoke-virtual {p0}, Lcom/unitech/api/file/helper/FileCtrlHelper;->closeFileStream()V

    .line 117
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public writeFile(Ljava/lang/String;[B)V
    .locals 1
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

    .line 68
    new-instance v0, Lcom/unitech/api/file/helper/FileHelper;

    invoke-direct {v0}, Lcom/unitech/api/file/helper/FileHelper;-><init>()V

    .line 69
    invoke-virtual {v0, p1, p2}, Lcom/unitech/api/file/helper/FileHelper;->writeFile(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, p2, v0}, Lcom/unitech/api/file/helper/FileCtrlHelper;->writeFile(Ljava/lang/String;[BZ)V

    return-void
.end method

.method public writeFile(Ljava/lang/String;[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "content",
            "keepContents"
        }
    .end annotation

    .line 81
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/unitech/api/file/helper/FileCtrlHelper;->getOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p1

    .line 82
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    invoke-virtual {p3, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 84
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 85
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    .line 86
    invoke-virtual {p0}, Lcom/unitech/api/file/helper/FileCtrlHelper;->closeFileStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
