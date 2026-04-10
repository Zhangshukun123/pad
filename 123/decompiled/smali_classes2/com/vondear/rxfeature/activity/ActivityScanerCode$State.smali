.class final enum Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;
.super Ljava/lang/Enum;
.source "ActivityScanerCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxfeature/activity/ActivityScanerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

.field public static final enum DONE:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

.field public static final enum PREVIEW:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

.field public static final enum SUCCESS:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 552
    new-instance v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->PREVIEW:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 554
    new-instance v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->SUCCESS:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 556
    new-instance v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->DONE:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    .line 550
    sget-object v5, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->PREVIEW:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    aput-object v5, v1, v2

    sget-object v2, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->SUCCESS:Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->$VALUES:[Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 550
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;
    .locals 1

    .line 550
    const-class v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    return-object p0
.end method

.method public static values()[Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;
    .locals 1

    .line 550
    sget-object v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->$VALUES:[Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    invoke-virtual {v0}, [Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vondear/rxfeature/activity/ActivityScanerCode$State;

    return-object v0
.end method
