.class public final enum Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;
.super Ljava/lang/Enum;
.source "WifiAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/util/WifiAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCapability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

.field public static final enum WIFI_CIPHER_NO_PASS:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

.field public static final enum WIFI_CIPHER_WEP:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

.field public static final enum WIFI_CIPHER_WPA:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 314
    new-instance v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    const-string v1, "WIFI_CIPHER_WEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_WEP:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    new-instance v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    const-string v1, "WIFI_CIPHER_WPA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_WPA:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    new-instance v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    const-string v1, "WIFI_CIPHER_NO_PASS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_NO_PASS:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    .line 313
    sget-object v5, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_WEP:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    aput-object v5, v1, v2

    sget-object v2, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_WPA:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->$VALUES:[Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;
    .locals 1

    .line 313
    const-class v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    return-object p0
.end method

.method public static values()[Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;
    .locals 1

    .line 313
    sget-object v0, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->$VALUES:[Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    invoke-virtual {v0}, [Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    return-object v0
.end method
