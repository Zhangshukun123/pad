.class Lcom/ayma/commonerp/config/Constants$17;
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

    .line 252
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u672a\u6838\u9500"

    .line 254
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$17;->add(Ljava/lang/Object;)Z

    const-string v0, "\u5df2\u6838\u9500"

    .line 255
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$17;->add(Ljava/lang/Object;)Z

    return-void
.end method
