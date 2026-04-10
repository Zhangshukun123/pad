.class Lcom/ayma/commonerp/config/Constants$18;
.super Landroidx/collection/ArrayMap;
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
        "Landroidx/collection/ArrayMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 258
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v0, "\u672a\u6838\u9500"

    const-string v1, "1"

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$18;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u5df2\u6838\u9500"

    const-string v1, "3"

    .line 261
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$18;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
