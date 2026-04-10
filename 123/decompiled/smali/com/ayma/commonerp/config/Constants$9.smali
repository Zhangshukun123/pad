.class Lcom/ayma/commonerp/config/Constants$9;
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

    .line 180
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "\u672a\u63d0\u4ea4"

    const-string v1, "0"

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u5df2\u63d0\u4ea4"

    const-string v1, "1"

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
