.class Lcom/ayma/commonerp/config/Constants$14;
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

    .line 226
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "\u8f66\u73ed\u62a5\u5e9f"

    const-string v1, "TO4"

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u8f66\u73ed\u4e22\u5931"

    const-string v1, "TO5"

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/ayma/commonerp/config/Constants$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
