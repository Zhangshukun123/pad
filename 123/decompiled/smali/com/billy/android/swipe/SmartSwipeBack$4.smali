.class final Lcom/billy/android/swipe/SmartSwipeBack$4;
.super Ljava/lang/Object;
.source "SmartSwipeBack.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SmartSwipeBack;->activityDoorBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$direction:I

.field final synthetic val$edgeSize:I

.field final synthetic val$refreshable:Z

.field final synthetic val$scrimColor:I


# direct methods
.method constructor <init>(ZIII)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$refreshable:Z

    iput p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$scrimColor:I

    iput p3, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$direction:I

    iput p4, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$edgeSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSwipeBackConsumer(Landroid/app/Activity;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    .line 222
    new-instance v0, Lcom/billy/android/swipe/consumer/ActivityDoorBackConsumer;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/consumer/ActivityDoorBackConsumer;-><init>(Landroid/app/Activity;)V

    iget-boolean v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$refreshable:Z

    .line 223
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/ActivityDoorBackConsumer;->setRefreshable(Z)Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$scrimColor:I

    .line 224
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->setScrimColor(I)Lcom/billy/android/swipe/consumer/ShuttersConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$direction:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/ShuttersConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$4;->val$edgeSize:I

    .line 226
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->setEdgeSize(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    new-instance v1, Lcom/billy/android/swipe/SmartSwipeBack$4$1;

    invoke-direct {v1, p0, p1}, Lcom/billy/android/swipe/SmartSwipeBack$4$1;-><init>(Lcom/billy/android/swipe/SmartSwipeBack$4;Landroid/app/Activity;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method
