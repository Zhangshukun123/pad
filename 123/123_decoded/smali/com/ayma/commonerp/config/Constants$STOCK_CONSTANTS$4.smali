.class Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$4;
.super Ljava/util/ArrayList;
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
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "PDA\u9500\u552e\u51fa\u5e93"

    .line 310
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$4;->add(Ljava/lang/Object;)Z

    return-void
.end method
