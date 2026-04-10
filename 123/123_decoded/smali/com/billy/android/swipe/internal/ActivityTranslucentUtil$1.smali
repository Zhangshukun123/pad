.class Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$1;
.super Ljava/lang/Object;
.source "ActivityTranslucentUtil.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$1;->this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$1;->this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-virtual {v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent()V

    const/4 v0, 0x0

    return v0
.end method
