.class Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;
.super Lcom/billy/android/swipe/listener/SimpleSwipeListener;
.source "SwipeConsumerExclusiveGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;->this$0:Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;

    invoke-direct {p0}, Lcom/billy/android/swipe/listener/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeClosed(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;->this$0:Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;

    invoke-static {p1}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->access$000(Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    if-ne p2, p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;->this$0:Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;

    invoke-virtual {p1}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->markNoCurrent()V

    :cond_0
    return-void
.end method

.method public onSwipeOpened(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;->this$0:Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;

    invoke-virtual {p1, p2}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->markAsCurrent(Lcom/billy/android/swipe/SwipeConsumer;)V

    return-void
.end method
