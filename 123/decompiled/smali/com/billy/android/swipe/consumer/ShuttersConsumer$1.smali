.class Lcom/billy/android/swipe/consumer/ShuttersConsumer$1;
.super Ljava/lang/Object;
.source "ShuttersConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/consumer/ShuttersConsumer;
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

    .line 81
    iput-object p1, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$1;->this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$1;->this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    invoke-static {v0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->access$000(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)V

    .line 85
    iget-object v0, p0, Lcom/billy/android/swipe/consumer/ShuttersConsumer$1;->this$0:Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    invoke-static {v0}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->access$100(Lcom/billy/android/swipe/consumer/ShuttersConsumer;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/billy/android/swipe/SmartSwipeWrapper;->postInvalidate()V

    return-void
.end method
