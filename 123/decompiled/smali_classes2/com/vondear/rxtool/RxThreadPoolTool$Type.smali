.class public final enum Lcom/vondear/rxtool/RxThreadPoolTool$Type;
.super Ljava/lang/Enum;
.source "RxThreadPoolTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxThreadPoolTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vondear/rxtool/RxThreadPoolTool$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vondear/rxtool/RxThreadPoolTool$Type;

.field public static final enum CachedThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

.field public static final enum FixedThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

.field public static final enum SingleThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 290
    new-instance v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    const-string v1, "FixedThread"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vondear/rxtool/RxThreadPoolTool$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->FixedThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    .line 291
    new-instance v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    const-string v1, "CachedThread"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vondear/rxtool/RxThreadPoolTool$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->CachedThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    .line 292
    new-instance v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    const-string v1, "SingleThread"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vondear/rxtool/RxThreadPoolTool$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->SingleThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    .line 289
    sget-object v5, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->FixedThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    aput-object v5, v1, v2

    sget-object v2, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->CachedThread:Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->$VALUES:[Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vondear/rxtool/RxThreadPoolTool$Type;
    .locals 1

    .line 289
    const-class v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    return-object p0
.end method

.method public static values()[Lcom/vondear/rxtool/RxThreadPoolTool$Type;
    .locals 1

    .line 289
    sget-object v0, Lcom/vondear/rxtool/RxThreadPoolTool$Type;->$VALUES:[Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    invoke-virtual {v0}, [Lcom/vondear/rxtool/RxThreadPoolTool$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vondear/rxtool/RxThreadPoolTool$Type;

    return-object v0
.end method
