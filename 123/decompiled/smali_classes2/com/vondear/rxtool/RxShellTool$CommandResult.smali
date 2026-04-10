.class public Lcom/vondear/rxtool/RxShellTool$CommandResult;
.super Ljava/lang/Object;
.source "RxShellTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxShellTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcom/vondear/rxtool/RxShellTool$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p1, p0, Lcom/vondear/rxtool/RxShellTool$CommandResult;->result:I

    .line 183
    iput-object p2, p0, Lcom/vondear/rxtool/RxShellTool$CommandResult;->successMsg:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/vondear/rxtool/RxShellTool$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method
