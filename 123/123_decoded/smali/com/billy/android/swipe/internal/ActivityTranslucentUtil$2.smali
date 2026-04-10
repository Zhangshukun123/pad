.class Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;
.super Ljava/lang/Object;
.source "ActivityTranslucentUtil.java"

# interfaces
.implements Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$TranslucentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

.field final synthetic val$callbackTimeStamp:J

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;JZ)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    iput-wide p2, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->val$callbackTimeStamp:J

    iput-boolean p4, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranslucentCallback(Z)V
    .locals 5

    .line 92
    iget-wide v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->val$callbackTimeStamp:J

    iget-object v2, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-static {v2}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->access$000(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 93
    iget-boolean v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->val$retry:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->convertActivityToTranslucent(Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil$2;->this$0:Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;

    invoke-static {v0, p1}, Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;->access$100(Lcom/billy/android/swipe/internal/ActivityTranslucentUtil;Z)V

    :cond_1
    :goto_0
    return-void
.end method
