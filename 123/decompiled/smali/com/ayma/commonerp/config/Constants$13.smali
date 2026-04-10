.class Lcom/ayma/commonerp/config/Constants$13;
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

    .line 220
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "\u8f66\u73ed\u4e22\u5931"

    .line 222
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$13;->add(Ljava/lang/Object;)Z

    const-string v0, "\u8f66\u73ed\u62a5\u5e9f"

    .line 223
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/config/Constants$13;->add(Ljava/lang/Object;)Z

    return-void
.end method
