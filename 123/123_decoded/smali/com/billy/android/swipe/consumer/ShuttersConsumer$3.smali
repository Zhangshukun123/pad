.class Lcom/billy/android/swipe/consumer/ShuttersConsumer$3;
.super Ljava/lang/Object;
.source "ShuttersConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/consumer/ShuttersConsumer;->refreshBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$3;->this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$3;->this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    invoke-static {v0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->access$200(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/billy/android/swipe/internal/SwipeUtil;->runInThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method
