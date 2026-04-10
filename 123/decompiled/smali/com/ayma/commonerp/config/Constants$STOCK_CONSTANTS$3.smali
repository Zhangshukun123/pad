.class Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$3;
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

    .line 302
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v0, "PDA\u9500\u552e\u51fa\u5e93"

    const-string v1, "SO9"

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
