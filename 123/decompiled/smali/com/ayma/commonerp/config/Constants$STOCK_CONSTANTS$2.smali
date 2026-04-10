.class Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$2;
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

    .line 295
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "PDA\u91c7\u8d2d\u5165\u5e93"

    .line 297
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$STOCK_CONSTANTS$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
