.class public Lcom/unitech/api/machine/Machine;
.super Ljava/lang/Object;
.source "Machine.java"


# static fields
.field public static EA300:Z = false

.field public static EA320:Z = false

.field public static EA360:Z = false

.field public static EA500:Z = false

.field public static EA500Plus:Z = false

.field public static EA502:Z = false

.field public static EA510:Z = false

.field public static EA520:Z = false

.field public static EA560:Z = false

.field public static EA600:Z = false

.field public static EA601:Z = false

.field public static EA602:Z = false

.field public static EA630:Z = false

.field public static EA630Plus:Z = false

.field public static H3:Z = false

.field public static HT1:Z = false

.field public static HT330:Z = false

.field public static HT380:Z = false

.field public static HT510:Z = false

.field public static HT730:Z = false

.field public static final MODEL_NUMBER_EA300:Ljava/lang/String; = "EA300"

.field public static final MODEL_NUMBER_EA320:Ljava/lang/String; = "EA320"

.field public static final MODEL_NUMBER_EA360:Ljava/lang/String; = "EA360"

.field public static final MODEL_NUMBER_EA500:Ljava/lang/String; = "EA500"

.field public static final MODEL_NUMBER_EA500_PLUS:Ljava/lang/String; = "EA500Plus"

.field public static final MODEL_NUMBER_EA502:Ljava/lang/String; = "EA502"

.field public static final MODEL_NUMBER_EA510:Ljava/lang/String; = "EA510"

.field public static final MODEL_NUMBER_EA560:Ljava/lang/String; = "EA560"

.field public static final MODEL_NUMBER_EA560_1:Ljava/lang/String; = "EA601"

.field public static final MODEL_NUMBER_EA600:Ljava/lang/String; = "EA600"

.field public static final MODEL_NUMBER_EA602:Ljava/lang/String; = "EA602"

.field public static final MODEL_NUMBER_EA630:Ljava/lang/String; = "EA630"

.field public static final MODEL_NUMBER_EA630_PLUS:Ljava/lang/String; = "EA630_Plus"

.field public static final MODEL_NUMBER_H3:Ljava/lang/String; = "H3"

.field public static final MODEL_NUMBER_HT1:Ljava/lang/String; = "HT1"

.field public static final MODEL_NUMBER_HT380:Ljava/lang/String; = "HT380"

.field public static final MODEL_NUMBER_HT510:Ljava/lang/String; = "HT510"

.field public static final MODEL_NUMBER_PA700:Ljava/lang/String; = "PA700"

.field public static final MODEL_NUMBER_PA720:Ljava/lang/String; = "PA720"

.field public static final MODEL_NUMBER_PA726:Ljava/lang/String; = "PA726"

.field public static final MODEL_NUMBER_PA730:Ljava/lang/String; = "PA730"

.field public static final MODEL_NUMBER_PA760:Ljava/lang/String; = "PA760"

.field public static final MODEL_NUMBER_TB120:Ljava/lang/String; = "TB120"

.field public static final MODEL_NUMBER_TB128:Ljava/lang/String; = "TB128"

.field public static final MODEL_NUMBER_TB85:Ljava/lang/String; = "TB85"

.field public static final MODEL_NUMBER_WD100:Ljava/lang/String; = "WD100"

.field public static final MODEL_NUMBER_WD200:Ljava/lang/String; = "wd200"

.field public static PA700:Z

.field public static PA720:Z

.field public static PA726:Z

.field public static PA730:Z

.field public static PA760:Z

.field public static TB120:Z

.field public static TB128:Z

.field public static TB85:Z

.field public static TB85Plus:Z

.field public static WD100:Z

.field public static WD200:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ht1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->HT1:Z

    .line 39
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->H3:Z

    .line 40
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ht330"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->HT330:Z

    .line 41
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ht380"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->HT380:Z

    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ht510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->HT510:Z

    .line 43
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ht730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->HT730:Z

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wd100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->WD100:Z

    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wd200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->WD200:Z

    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->PA700:Z

    .line 49
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->PA720:Z

    .line 50
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa726"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->PA726:Z

    .line 51
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->PA730:Z

    .line 52
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pa760"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->PA760:Z

    .line 54
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tb120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->TB120:Z

    .line 55
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tb128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->TB128:Z

    .line 56
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tb85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->TB85:Z

    .line 57
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tb85plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->TB85Plus:Z

    .line 59
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA300:Z

    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA320:Z

    .line 61
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA600:Z

    .line 62
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA602:Z

    .line 63
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA500:Z

    .line 64
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA502:Z

    .line 65
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea500plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA500Plus:Z

    .line 66
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA360:Z

    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea560"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA560:Z

    .line 68
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA601:Z

    .line 69
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA510:Z

    .line 70
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea630"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA630:Z

    .line 71
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea630_plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA630Plus:Z

    .line 72
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/unitech/api/machine/Machine;->EA520:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
