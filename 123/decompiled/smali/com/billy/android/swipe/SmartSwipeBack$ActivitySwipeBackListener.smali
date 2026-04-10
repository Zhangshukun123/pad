.class public Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;
.super Ljava/lang/Object;
.source "SmartSwipeBack.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/billy/android/swipe/SmartSwipeBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivitySwipeBackListener"
.end annotation


# instance fields
.field private mFactory:Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;

.field private mFilter:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFactory:Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;

    .line 280
    iput-object p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFilter:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;

    return-void
.end method

.method static synthetic access$002(Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;)Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFactory:Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;

    return-object p1
.end method

.method static synthetic access$102(Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;)Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFilter:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 285
    sget-object p2, Lcom/billy/android/swipe/SmartSwipeBack;->ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFactory:Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;

    if-nez p2, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFilter:Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackFilter;->onFilter(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 292
    :cond_1
    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipe;->wrap(Landroid/app/Activity;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeBack$ActivitySwipeBackListener;->mFactory:Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;

    invoke-interface {v0, p1}, Lcom/billy/android/swipe/SmartSwipeBack$SwipeBackConsumerFactory;->createSwipeBackConsumer(Landroid/app/Activity;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->addConsumer(Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/SwipeConsumer;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 300
    sget-object v0, Lcom/billy/android/swipe/SmartSwipeBack;->ACTIVITIES:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
