.class public final enum Lcom/vondear/rxtool/RxConstTool$TimeUnit;
.super Ljava/lang/Enum;
.source "RxConstTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxConstTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vondear/rxtool/RxConstTool$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vondear/rxtool/RxConstTool$TimeUnit;

.field public static final enum DAY:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

.field public static final enum HOUR:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

.field public static final enum MIN:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

.field public static final enum MSEC:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

.field public static final enum SEC:Lcom/vondear/rxtool/RxConstTool$TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 131
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    const-string v1, "MSEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vondear/rxtool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->MSEC:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    .line 132
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    const-string v1, "SEC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vondear/rxtool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->SEC:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    .line 133
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    const-string v1, "MIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vondear/rxtool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->MIN:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    .line 134
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    const-string v1, "HOUR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/vondear/rxtool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->HOUR:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    .line 135
    new-instance v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    const-string v1, "DAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/vondear/rxtool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->DAY:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    .line 130
    sget-object v7, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->MSEC:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    aput-object v7, v1, v2

    sget-object v2, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->SEC:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    aput-object v2, v1, v3

    sget-object v2, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->MIN:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    aput-object v2, v1, v4

    sget-object v2, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->HOUR:Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->$VALUES:[Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vondear/rxtool/RxConstTool$TimeUnit;
    .locals 1

    .line 130
    const-class v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    return-object p0
.end method

.method public static values()[Lcom/vondear/rxtool/RxConstTool$TimeUnit;
    .locals 1

    .line 130
    sget-object v0, Lcom/vondear/rxtool/RxConstTool$TimeUnit;->$VALUES:[Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    invoke-virtual {v0}, [Lcom/vondear/rxtool/RxConstTool$TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vondear/rxtool/RxConstTool$TimeUnit;

    return-object v0
.end method
