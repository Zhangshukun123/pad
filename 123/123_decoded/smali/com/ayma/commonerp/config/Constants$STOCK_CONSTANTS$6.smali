.class Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;
.super Landroidx/collection/ArrayMap;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS;
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

    .line 321
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v0, "\u5168\u90e8"

    const-string v1, ""

    .line 323
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u5df2\u63d0\u4ea4"

    const-string v1, "1"

    .line 324
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u672a\u63d0\u4ea4"

    const-string v1, "0"

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u5f85\u4e0a\u4f20"

    const-string v1, "-3"

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
