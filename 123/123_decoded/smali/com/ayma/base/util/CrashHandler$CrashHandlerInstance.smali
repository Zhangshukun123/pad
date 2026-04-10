.class Lcom/ayma/base/util/CrashHandler$CrashHandlerInstance;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/base/util/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashHandlerInstance"
.end annotation


# static fields
.field private static final instance:Lcom/ayma/base/util/CrashHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/ayma/base/util/CrashHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ayma/base/util/CrashHandler;-><init>(Lcom/ayma/base/util/CrashHandler$1;)V

    sput-object v0, Lcom/ayma/base/util/CrashHandler$CrashHandlerInstance;->instance:Lcom/ayma/base/util/CrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/ayma/base/util/CrashHandler;
    .locals 1

    .line 75
    sget-object v0, Lcom/ayma/base/util/CrashHandler$CrashHandlerInstance;->instance:Lcom/ayma/base/util/CrashHandler;

    return-object v0
.end method
