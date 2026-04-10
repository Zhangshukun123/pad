.class Lcom/billy/android/swipe/SmartSwipeRefresh$2;
.super Ljava/lang/Object;
.source "SmartSwipeRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SmartSwipeRefresh;->openDirection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

.field final synthetic val$direction:I


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SmartSwipeRefresh;I)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$2;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    iput p2, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$2;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$2;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$500(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$2;->val$direction:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->open(ZI)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method
