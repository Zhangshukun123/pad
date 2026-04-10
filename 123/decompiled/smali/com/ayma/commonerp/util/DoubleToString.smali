.class public Lcom/ayma/commonerp/util/DoubleToString;
.super Ljava/lang/Object;
.source "DoubleToString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleParseString(D)Ljava/lang/String;
    .locals 4

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, p0, v1

    if-lez v3, :cond_0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
