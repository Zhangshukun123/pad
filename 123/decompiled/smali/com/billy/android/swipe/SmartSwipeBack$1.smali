.class final Lcom/billy/android/swipe/SmartSwipeBack$1;
.super Ljava/lang/Object;
.source "SmartSwipeBack.java"

# interfaces
.implements Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SmartSwipeBack;->activityStayBack(Landroid/app/Application;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$direction:I

.field final synthetic val$edgeSize:I

.field final synthetic val$minVelocity:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$1;->val$minVelocity:I

    iput p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$1;->val$edgeSize:I

    iput p3, p0, Lcom/billy/android/swipe/SmartSwipeBack$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSwipeBackConsumer(Landroid/app/Activity;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 2

    .line 93
    new-instance v0, Lcom/billy/android/swipe/consumer/StayConsumer;

    invoke-direct {v0}, Lcom/billy/android/swipe/consumer/StayConsumer;-><init>()V

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$1;->val$minVelocity:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/StayConsumer;->setMinVelocity(I)Lcom/billy/android/swipe/consumer/StayConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$1;->val$edgeSize:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/consumer/StayConsumer;->setEdgeSize(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    iget v1, p0, Lcom/billy/android/swipe/SmartSwipeBack$1;->val$direction:I

    .line 96
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->enableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object v0

    new-instance v1, Lcom/billy/android/swipe/SmartSwipeBack$1$1;

    invoke-direct {v1, p0, p1}, Lcom/billy/android/swipe/SmartSwipeBack$1$1;-><init>(Lcom/billy/android/swipe/SmartSwipeBack$1;Landroid/app/Activity;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    return-object p1
.end method
