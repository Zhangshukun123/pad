.class public Lcom/vondear/rxtool/RxZipTool$CompressStatus;
.super Ljava/lang/Object;
.source "RxZipTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/RxZipTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompressStatus"
.end annotation


# static fields
.field public static final COMPLETED:I = 0x2

.field public static final ERROR:I = 0x3

.field public static final HANDLING:I = 0x1

.field public static final START:I


# instance fields
.field final synthetic this$0:Lcom/vondear/rxtool/RxZipTool;


# direct methods
.method public constructor <init>(Lcom/vondear/rxtool/RxZipTool;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/vondear/rxtool/RxZipTool$CompressStatus;->this$0:Lcom/vondear/rxtool/RxZipTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
