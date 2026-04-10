.class Lcom/billy/android/swipe/SwipeConsumer$1;
.super Lcom/billy/android/swipe/listener/SimpleSwipeListener;
.source "SwipeConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SwipeConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/SwipeConsumer;

.field final synthetic val$curDirection:I


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer$1;->this$0:Lcom/billy/android/swipe/SwipeConsumer;

    iput p2, p0, Lcom/billy/android/swipe/SwipeConsumer$1;->val$curDirection:I

    invoke-direct {p0}, Lcom/billy/android/swipe/listener/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeOpened(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 973
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer$1;->this$0:Lcom/billy/android/swipe/SwipeConsumer;

    iget p2, p0, Lcom/billy/android/swipe/SwipeConsumer$1;->val$curDirection:I

    invoke-virtual {p1, p2}, Lcom/billy/android/swipe/SwipeConsumer;->unlockDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    .line 974
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumer$1;->this$0:Lcom/billy/android/swipe/SwipeConsumer;

    invoke-virtual {p1, p0}, Lcom/billy/android/swipe/SwipeConsumer;->removeListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method
