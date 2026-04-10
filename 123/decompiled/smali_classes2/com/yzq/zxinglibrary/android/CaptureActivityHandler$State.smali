.class final enum Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yzq/zxinglibrary/android/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->PREVIEW:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    new-instance v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->SUCCESS:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    new-instance v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->DONE:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    .line 46
    sget-object v5, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->PREVIEW:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    aput-object v5, v1, v2

    sget-object v2, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->SUCCESS:Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->$VALUES:[Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;
    .locals 1

    .line 46
    const-class v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;
    .locals 1

    .line 46
    sget-object v0, Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->$VALUES:[Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yzq/zxinglibrary/android/CaptureActivityHandler$State;

    return-object v0
.end method
