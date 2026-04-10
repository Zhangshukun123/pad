.class public Lcom/vondear/rxtool/module/photomagic/RxMagic;
.super Ljava/lang/Object;
.source "RxMagic.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "rxmagic_disk_cache"

.field private static final MSG_COMPRESS_ERROR:I = 0x2

.field private static final MSG_COMPRESS_START:I = 0x1

.field private static final MSG_COMPRESS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RxMagic"


# instance fields
.field private mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

.field private mHandler:Landroid/os/Handler;

.field private mLeastCompressSize:I

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDir:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->access$000(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mPaths:Ljava/util/List;

    .line 37
    invoke-static {p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->access$100(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mTargetDir:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->access$200(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    .line 39
    invoke-static {p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->access$300(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)I

    move-result p1

    iput p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mLeastCompressSize:I

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;Lcom/vondear/rxtool/module/photomagic/RxMagic$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;-><init>(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vondear/rxtool/module/photomagic/RxMagic;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->get(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/vondear/rxtool/module/photomagic/RxMagic;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vondear/rxtool/module/photomagic/RxMagic;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mLeastCompressSize:I

    return p0
.end method

.method static synthetic access$600(Lcom/vondear/rxtool/module/photomagic/RxMagic;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/vondear/rxtool/module/photomagic/RxMagic;Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->launch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/vondear/rxtool/module/photomagic/RxMagic;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->get(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private get(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/vondear/rxtool/module/photomagic/Engine;

    invoke-static {p1}, Lcom/vondear/rxtool/module/photomagic/Checker;->checkSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/vondear/rxtool/module/photomagic/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/vondear/rxtool/module/photomagic/Engine;->compress()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private get(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    invoke-static {v2}, Lcom/vondear/rxtool/module/photomagic/Checker;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    new-instance v3, Lcom/vondear/rxtool/module/photomagic/Engine;

    invoke-static {v2}, Lcom/vondear/rxtool/module/photomagic/Checker;->checkSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/vondear/rxtool/module/photomagic/Engine;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/vondear/rxtool/module/photomagic/Engine;->compress()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getImageCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "rxmagic_disk_cache"

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private getImageCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x6

    const-string p2, "RxMagic"

    .line 96
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "default disk cache dir is null"

    .line 97
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getImageCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mTargetDir:Ljava/lang/String;

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ".jpg"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private launch(Landroid/content/Context;)V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mPaths:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "image file cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vondear/rxtool/module/photomagic/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-static {v1}, Lcom/vondear/rxtool/module/photomagic/Checker;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/vondear/rxtool/module/photomagic/RxMagic$1;-><init>(Lcom/vondear/rxtool/module/photomagic/RxMagic;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not read the path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/vondear/rxtool/module/photomagic/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    .line 134
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 1

    .line 44
    new-instance v0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;

    invoke-direct {v0, p0}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/module/photomagic/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    invoke-interface {p1}, Lcom/vondear/rxtool/module/photomagic/OnCompressListener;->onStart()V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-interface {v0, p1}, Lcom/vondear/rxtool/module/photomagic/OnCompressListener;->onSuccess(Ljava/io/File;)V

    :goto_0
    return v1
.end method
