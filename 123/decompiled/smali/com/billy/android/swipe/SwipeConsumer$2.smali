.class Lcom/billy/android/swipe/SwipeConsumer$2;
.super Lcom/billy/android/swipe/listener/SimpleSwipeListener;
.source "SwipeConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SwipeConsumer;->close(Z)Lcom/billy/android/swipe/SwipeConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/SwipeConsumer;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SwipeConsumer;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer$2;->this$0:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-direct {p0}, Lcom/billy/android/swipe/listener/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeClosed(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 1001
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer$2;->this$0:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {p1, p3}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    .line 1002
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer$2;->this$0:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {p1, p0}, Lcom/billy/android/swipe/SwipeConsumer;->removeListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method
