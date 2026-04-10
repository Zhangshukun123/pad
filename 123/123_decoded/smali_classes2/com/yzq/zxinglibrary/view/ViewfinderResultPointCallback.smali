.class public final Lcom/yzq/zxinglibrary/view/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/yzq/zxinglibrary/view/ViewfinderView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yzq/zxinglibrary/view/ViewfinderResultPointCallback;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/yzq/zxinglibrary/view/ViewfinderResultPointCallback;->viewfinderView:Lcom/yzq/zxinglibrary/view/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/yzq/zxinglibrary/view/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
