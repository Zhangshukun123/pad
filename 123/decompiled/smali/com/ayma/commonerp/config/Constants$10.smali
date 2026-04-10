.class Lcom/ayma/commonerp/config/Constants$10;
.super Ljava/util/TreeMap;
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
        "Ljava/util/TreeMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "0"

    const-string v1, "\u672a\u63d0\u4ea4"

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1"

    const-string v1, "\u5df2\u63d0\u4ea4"

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$10;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
