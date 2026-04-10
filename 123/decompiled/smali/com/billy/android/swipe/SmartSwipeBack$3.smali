.class final Lcom/billy/android/swipe/SmartSwipeBack$3;
.super Ljava/lang/Object;
.source "SmartSwipeBack.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SmartSwipeBack;->activityBezierBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arrowColor:I

.field final synthetic val$color:I

.field final synthetic val$direction:I

.field final synthetic val$edgeSize:I

.field final synthetic val$size:I

.field final synthetic val$thickness:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$color:I

    iput p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$arrowColor:I

    iput p3, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$size:I

    iput p4, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$thickness:I

    iput p5, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$edgeSize:I

    iput p6, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSwipeBackConsumer(Landroid/app/Activity;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    .line 185
    new-instance v0, Lcom/billy/android/swipe/consumer/BezierBackConsumer;

    invoke-direct {v0}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;-><init>()V

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$color:I

    .line 186
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->setColor(I)Lcom/billy/android/swipe/consumer/BezierBackConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$arrowColor:I

    .line 187
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->setArrowColor(I)Lcom/billy/android/swipe/consumer/BezierBackConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$size:I

    .line 188
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->setSize(I)Lcom/billy/android/swipe/consumer/BezierBackConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$thickness:I

    .line 189
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/BezierBackConsumer;->setOpenDistance(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    new-instance v1, Lcom/billy/android/swipe/SmartSwipeBack$3$1;

    invoke-direct {v1, p0, p1}, Lcom/billy/android/swipe/SmartSwipeBack$3$1;-><init>(Lcom/billy/android/swipe/SmartSwipeBack$3;Landroid/app/Activity;)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    iget v0, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$edgeSize:I

    .line 198
    invoke-virtual {p1, v0}, Lcom/billy/android/swipe/SwipeConsumer;->setEdgeSize(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    iget v0, p0, Lcom/billy/android/swipe/SmartSwipeBack$3;->val$direction:I

    .line 199
    invoke-virtual {p1, v0}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method
