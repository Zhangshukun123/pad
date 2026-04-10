.class public Lcom/vondear/rxtool/RxLogTool;
.super Ljava/lang/Object;
.source "RxLogTool.java"


# static fields
.field private static final FILE_SUFFIX:Ljava/text/SimpleDateFormat;

.field private static LOG_FILE_NAME:Ljava/lang/String;

.field private static LOG_FILE_PATH:Ljava/lang/String;

.field private static final LOG_FORMAT:Ljava/text/SimpleDateFormat;

.field private static LOG_SAVE_DAYS:I

.field private static LOG_SWITCH:Ljava/lang/Boolean;

.field private static LOG_TAG:Ljava/lang/String;

.field private static LOG_TO_FILE:Ljava/lang/Boolean;

.field private static LOG_TYPE:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_FORMAT:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vondear/rxtool/RxLogTool;->FILE_SUFFIX:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_SWITCH:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TO_FILE:Ljava/lang/Boolean;

    const-string v0, "TAG"

    .line 28
    sput-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x76

    .line 29
    sput-char v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TYPE:C

    const/4 v0, 0x7

    .line 30
    sput v0, Lcom/vondear/rxtool/RxLogTool;->LOG_SAVE_DAYS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1

    .line 73
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxLogTool;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxLogTool;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/RxLogTool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V

    return-void
.end method

.method public static delFile()V
    .locals 4

    .line 169
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->FILE_SUFFIX:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/vondear/rxtool/RxLogTool;->getDateBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_PATH:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxLogTool;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxLogTool;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x65

    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/RxLogTool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V

    return-void
.end method

.method private static getDateBefore()Ljava/util/Date;
    .locals 4

    .line 182
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x5

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sget v3, Lcom/vondear/rxtool/RxLogTool;->LOG_SAVE_DAYS:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 186
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxLogTool;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxLogTool;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x69

    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/RxLogTool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_PATH:Ljava/lang/String;

    const-string p0, "Log"

    .line 36
    sput-object p0, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V
    .locals 3

    .line 122
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_SWITCH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x65

    const/16 v1, 0x76

    if-ne v0, p3, :cond_1

    .line 123
    sget-char v2, Lcom/vondear/rxtool/RxLogTool;->LOG_TYPE:C

    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    .line 124
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0x77

    if-ne v0, p3, :cond_3

    .line 125
    sget-char v2, Lcom/vondear/rxtool/RxLogTool;->LOG_TYPE:C

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_3

    .line 126
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-ne v0, p3, :cond_5

    .line 127
    sget-char v2, Lcom/vondear/rxtool/RxLogTool;->LOG_TYPE:C

    if-eq v0, v2, :cond_4

    if-ne v1, v2, :cond_5

    .line 128
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    const/16 v2, 0x69

    if-ne v2, p3, :cond_7

    .line 129
    sget-char v2, Lcom/vondear/rxtool/RxLogTool;->LOG_TYPE:C

    if-eq v0, v2, :cond_6

    if-ne v1, v2, :cond_7

    .line 130
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 132
    :cond_7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    :goto_0
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TO_FILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, ""

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p3, p0, p1}, Lcom/vondear/rxtool/RxLogTool;->log2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static declared-synchronized log2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/vondear/rxtool/RxLogTool;

    monitor-enter v0

    .line 145
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 146
    sget-object v2, Lcom/vondear/rxtool/RxLogTool;->FILE_SUFFIX:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vondear/rxtool/RxLogTool;->LOG_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_PATH:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_PATH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/vondear/rxtool/RxLogTool;->LOG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    new-instance p2, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 155
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 156
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 158
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 159
    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static saveLogFile(Ljava/lang/String;)V
    .locals 5

    .line 190
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vondear/rxtool/RxFileTool;->getRootPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vondear/rxtool/RxTool;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 195
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyyyMMdd"

    invoke-static {v3}, Lcom/vondear/rxtool/RxTimeTool;->getCurrentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\n"

    if-eqz v0, :cond_1

    .line 198
    :try_start_1
    new-instance v0, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n\nyyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lcom/vondear/rxtool/RxTimeTool;->getCurrentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lcom/vondear/rxtool/RxTimeTool;->getCurrentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 1

    .line 103
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxLogTool;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxLogTool;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x76

    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/RxLogTool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/vondear/rxtool/RxLogTool;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/vondear/rxtool/RxLogTool;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, v0}, Lcom/vondear/rxtool/RxLogTool;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x77

    invoke-static {p0, p1, p2, v0}, Lcom/vondear/rxtool/RxLogTool;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;C)V

    return-void
.end method
