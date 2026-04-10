.class Lcom/billy/android/swipe/SmartSwipeRefresh$3;
.super Ljava/lang/Object;
.source "SmartSwipeRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/SmartSwipeRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SmartSwipeRefresh;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$3;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$3;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$500(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->smoothClose()Lcom/billy/android/swipe/SwipeConsumer;

    .line 399
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$3;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$500(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->unlockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method
