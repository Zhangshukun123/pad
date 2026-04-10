.class Lcom/ayma/commonerp/config/Constants$12$1;
.super Ljava/util/ArrayList;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/config/Constants$12;
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


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/config/Constants$12;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/config/Constants$12;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/ayma/commonerp/config/Constants$12$1;->this$0:Lcom/ayma/commonerp/config/Constants$12;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "9"

    .line 202
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/config/Constants$12$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
