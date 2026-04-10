.class public Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
.super Ljava/lang/Object;
.source "RxMagic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/module/photomagic/RxMagic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

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
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 188
    iput v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mLeastCompressSize:I

    .line 192
    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->context:Landroid/content/Context;

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mPaths:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)Ljava/util/List;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mPaths:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)Lcom/vondear/rxtool/module/photomagic/OnCompressListener;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mLeastCompressSize:I

    return p0
.end method

.method private build()Lcom/vondear/rxtool/module/photomagic/RxMagic;
    .locals 2

    .line 197
    new-instance v0, Lcom/vondear/rxtool/module/photomagic/RxMagic;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;-><init>(Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;Lcom/vondear/rxtool/module/photomagic/RxMagic$1;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->build()Lcom/vondear/rxtool/module/photomagic/RxMagic;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$900(Lcom/vondear/rxtool/module/photomagic/RxMagic;Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 256
    invoke-direct {p0}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->build()Lcom/vondear/rxtool/module/photomagic/RxMagic;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$1000(Lcom/vondear/rxtool/module/photomagic/RxMagic;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ignoreBy(I)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 0

    .line 235
    iput p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mLeastCompressSize:I

    return-object p0
.end method

.method public launch()V
    .locals 2

    .line 243
    invoke-direct {p0}, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->build()Lcom/vondear/rxtool/module/photomagic/RxMagic;

    move-result-object v0

    iget-object v1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vondear/rxtool/module/photomagic/RxMagic;->access$800(Lcom/vondear/rxtool/module/photomagic/RxMagic;Landroid/content/Context;)V

    return-void
.end method

.method public load(Ljava/io/File;)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mPaths:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public load(Ljava/util/List;)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public putGear(I)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 0

    return-object p0
.end method

.method public setCompressListener(Lcom/vondear/rxtool/module/photomagic/OnCompressListener;)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mCompressListener:Lcom/vondear/rxtool/module/photomagic/OnCompressListener;

    return-object p0
.end method

.method public setTargetDir(Ljava/lang/String;)Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/vondear/rxtool/module/photomagic/RxMagic$Builder;->mTargetDir:Ljava/lang/String;

    return-object p0
.end method
