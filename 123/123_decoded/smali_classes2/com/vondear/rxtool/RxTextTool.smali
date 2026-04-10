.class public Lcom/vondear/rxtool/RxTextTool;
.super Ljava/lang/Object;
.source "RxTextTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/RxTextTool$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuilder(Ljava/lang/CharSequence;)Lcom/vondear/rxtool/RxTextTool$Builder;
    .locals 2

    .line 52
    new-instance v0, Lcom/vondear/rxtool/RxTextTool$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vondear/rxtool/RxTextTool$Builder;-><init>(Ljava/lang/CharSequence;Lcom/vondear/rxtool/RxTextTool$1;)V

    return-object v0
.end method
