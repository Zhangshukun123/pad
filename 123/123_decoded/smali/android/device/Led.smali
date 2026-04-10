.class public final enum Landroid/device/Led;
.super Ljava/lang/Enum;
.source "Led.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/device/Led;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Landroid/device/Led;

.field public static final enum LED_1:Landroid/device/Led;

.field public static final enum LED_2:Landroid/device/Led;

.field public static final enum LED_3:Landroid/device/Led;

.field public static final enum LED_4:Landroid/device/Led;

.field public static final enum LED_5:Landroid/device/Led;

.field public static final enum LED_6:Landroid/device/Led;

.field public static final enum LED_7:Landroid/device/Led;

.field public static final enum LED_8:Landroid/device/Led;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_1:Landroid/device/Led;

    .line 5
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_2:Landroid/device/Led;

    .line 6
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_3:Landroid/device/Led;

    .line 7
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_4:Landroid/device/Led;

    .line 8
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_5:Landroid/device/Led;

    .line 9
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_6"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_6:Landroid/device/Led;

    .line 10
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_7"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_7:Landroid/device/Led;

    .line 11
    new-instance v0, Landroid/device/Led;

    const-string v1, "LED_8"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Landroid/device/Led;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/Led;->LED_8:Landroid/device/Led;

    new-array v1, v10, [Landroid/device/Led;

    .line 3
    sget-object v10, Landroid/device/Led;->LED_1:Landroid/device/Led;

    aput-object v10, v1, v2

    sget-object v2, Landroid/device/Led;->LED_2:Landroid/device/Led;

    aput-object v2, v1, v3

    sget-object v2, Landroid/device/Led;->LED_3:Landroid/device/Led;

    aput-object v2, v1, v4

    sget-object v2, Landroid/device/Led;->LED_4:Landroid/device/Led;

    aput-object v2, v1, v5

    sget-object v2, Landroid/device/Led;->LED_5:Landroid/device/Led;

    aput-object v2, v1, v6

    sget-object v2, Landroid/device/Led;->LED_6:Landroid/device/Led;

    aput-object v2, v1, v7

    sget-object v2, Landroid/device/Led;->LED_7:Landroid/device/Led;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Landroid/device/Led;->ENUM$VALUES:[Landroid/device/Led;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Landroid/device/Led;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/device/Led;
    .locals 1

    .line 1
    const-class v0, Landroid/device/Led;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/device/Led;

    return-object p0
.end method

.method public static values()[Landroid/device/Led;
    .locals 4

    .line 1
    sget-object v0, Landroid/device/Led;->ENUM$VALUES:[Landroid/device/Led;

    array-length v1, v0

    new-array v2, v1, [Landroid/device/Led;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 23
    iget v0, p0, Landroid/device/Led;->value:I

    return v0
.end method
