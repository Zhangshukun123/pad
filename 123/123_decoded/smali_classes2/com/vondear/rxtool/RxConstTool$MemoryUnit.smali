.class public final enum Lcom/vondear/rxtool/RxConstTool$MemoryUnit;
.super Ljava/lang/Enum;
.source "RxConstTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxConstTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vondear/rxtool/RxConstTool$MemoryUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

.field public static final enum BYTE:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

.field public static final enum GB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

.field public static final enum KB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

.field public static final enum MB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 124
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->BYTE:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    .line 125
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    const-string v1, "KB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->KB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    .line 126
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    const-string v1, "MB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->MB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    .line 127
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    const-string v1, "GB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->GB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    .line 123
    sget-object v6, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->BYTE:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    aput-object v6, v1, v2

    sget-object v2, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->KB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    aput-object v2, v1, v3

    sget-object v2, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->MB:Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->$VALUES:[Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vondear/rxtool/RxConstTool$MemoryUnit;
    .locals 1

    .line 123
    const-class v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    return-object p0
.end method

.method public static values()[Lcom/vondear/rxtool/RxConstTool$MemoryUnit;
    .locals 1

    .line 123
    sget-object v0, Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->$VALUES:[Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    invoke-virtual {v0}, [Lcom/vondear/rxtool/RxConstTool$MemoryUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vondear/rxtool/RxConstTool$MemoryUnit;

    return-object v0
.end method
