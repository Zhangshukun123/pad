.class Lcom/ayma/commonerp/config/Constants$15;
.super Ljava/util/ArrayList;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u5168\u90e8"

    .line 235
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$15;->add(Ljava/lang/Object;)Z

    const-string v0, "\u65e9\u9910"

    .line 236
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$15;->add(Ljava/lang/Object;)Z

    const-string v0, "\u4e2d\u9910"

    .line 237
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$15;->add(Ljava/lang/Object;)Z

    const-string v0, "\u665a\u9910"

    .line 238
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$15;->add(Ljava/lang/Object;)Z

    const-string v0, "\u591c\u5bb5"

    .line 239
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$15;->add(Ljava/lang/Object;)Z

    return-void
.end method
