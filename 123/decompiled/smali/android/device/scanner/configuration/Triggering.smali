.class public final enum Landroid/device/scanner/configuration/Triggering;
.super Ljava/lang/Enum;
.source "Triggering.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/device/scanner/configuration/Triggering;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTINUOUS:Landroid/device/scanner/configuration/Triggering;

.field private static final synthetic ENUM$VALUES:[Landroid/device/scanner/configuration/Triggering;

.field public static final enum HOST:Landroid/device/scanner/configuration/Triggering;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Landroid/device/scanner/configuration/Triggering;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 14
    invoke-direct {v0, v1, v2, v3}, Landroid/device/scanner/configuration/Triggering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Triggering;->CONTINUOUS:Landroid/device/scanner/configuration/Triggering;

    .line 15
    new-instance v0, Landroid/device/scanner/configuration/Triggering;

    const-string v1, "HOST"

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Landroid/device/scanner/configuration/Triggering;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/device/scanner/configuration/Triggering;->HOST:Landroid/device/scanner/configuration/Triggering;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/device/scanner/configuration/Triggering;

    .line 12
    sget-object v4, Landroid/device/scanner/configuration/Triggering;->CONTINUOUS:Landroid/device/scanner/configuration/Triggering;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Landroid/device/scanner/configuration/Triggering;->ENUM$VALUES:[Landroid/device/scanner/configuration/Triggering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Landroid/device/scanner/configuration/Triggering;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/device/scanner/configuration/Triggering;
    .locals 1

    .line 1
    const-class v0, Landroid/device/scanner/configuration/Triggering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/device/scanner/configuration/Triggering;

    return-object p0
.end method

.method public static values()[Landroid/device/scanner/configuration/Triggering;
    .locals 4

    .line 1
    sget-object v0, Landroid/device/scanner/configuration/Triggering;->ENUM$VALUES:[Landroid/device/scanner/configuration/Triggering;

    array-length v1, v0

    new-array v2, v1, [Landroid/device/scanner/configuration/Triggering;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
