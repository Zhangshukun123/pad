.class final Lcom/billy/android/swipe/SmartSwipeBack$2;
.super Ljava/lang/Object;
.source "SmartSwipeBack.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SmartSwipeBack;->activitySlidingBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;IIIIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$direction:I

.field final synthetic val$edgeSize:I

.field final synthetic val$factor:F

.field final synthetic val$scrimColor:I

.field final synthetic val$shadowColor:I

.field final synthetic val$shadowSize:I


# direct methods
.method constructor <init>(FIIIII)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$factor:F

    iput p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$scrimColor:I

    iput p3, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$shadowColor:I

    iput p4, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$shadowSize:I

    iput p5, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$edgeSize:I

    iput p6, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSwipeBackConsumer(Landroid/app/Activity;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    .line 141
    new-instance v0, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;

    invoke-direct {v0, p1}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$factor:F

    .line 142
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/ActivitySlidingBackConsumer;->setRelativeMoveFactor(F)Lcom/billy/android/swipe/consumer/SlidingConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$scrimColor:I

    .line 143
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/SlidingConsumer;->setScrimColor(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$shadowColor:I

    .line 144
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setShadowColor(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$shadowSize:I

    .line 145
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setShadowSize(I)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$edgeSize:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setEdgeSize(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$2;->val$direction:I

    .line 147
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    new-instance v1, Lcom/billy/android/swipe/SmartSwipeBack$2$1;

    invoke-direct {v1, p0, p1}, Lcom/billy/android/swipe/SmartSwipeBack$2$1;-><init>(Lcom/billy/android/swipe/SmartSwipeBack$2;Landroid/app/Activity;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method
