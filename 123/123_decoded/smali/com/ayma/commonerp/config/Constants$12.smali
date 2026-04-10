.class Lcom/ayma/commonerp/config/Constants$12;
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
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 199
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 201
    new-instance v0, Lcom/ayma/commonerp/config/Constants$12$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/config/Constants$12$1;-><init>(Lcom/ayma/commonerp/config/Constants$12;)V

    const-string v1, "12306\u8ba2\u5355"

    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/config/Constants$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/ayma/commonerp/config/Constants$12$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/config/Constants$12$2;-><init>(Lcom/ayma/commonerp/config/Constants$12;)V

    const-string v1, "PDA\u8ba2\u5355"

    invoke-virtual {p0, v1, v0}, Lcom/ayma/commonerp/config/Constants$12;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
