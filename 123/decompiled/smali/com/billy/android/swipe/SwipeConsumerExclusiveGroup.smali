.class public Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;
.super Ljava/lang/Object;
.source "SwipeConsumerExclusiveGroup.java"


# instance fields
.field private curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/billy/android/swipe/SwipeConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private lockOther:Z

.field private singleListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

.field private smooth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->lockOther:Z

    .line 86
    new-instance v0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;-><init>(Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;)V

    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->singleListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->smooth:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->lockOther:Z

    .line 86
    new-instance v0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup$1;-><init>(Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;)V

    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->singleListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    .line 27
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->smooth:Z

    return-void
.end method

.method static synthetic access$000(Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;)Lcom/billy/android/swipe/SwipeConsumer;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/billy/android/swipe/SwipeConsumer;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->singleListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    invoke-virtual {p1, v0}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->singleListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->removeListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCurSwipeConsumer()Lcom/billy/android/swipe/SwipeConsumer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    return-object v0
.end method

.method public isLockOther()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->lockOther:Z

    return v0
.end method

.method public isSmooth()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->smooth:Z

    return v0
.end method

.method public markAsCurrent(Lcom/billy/android/swipe/SwipeConsumer;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->smooth:Z

    invoke-virtual {p0, p1, v0}, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->markAsCurrent(Lcom/billy/android/swipe/SwipeConsumer;Z)V

    return-void
.end method

.method public markAsCurrent(Lcom/billy/android/swipe/SwipeConsumer;Z)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    if-ne v0, p1, :cond_0

    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    .line 53
    iget-object p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/billy/android/swipe/SwipeConsumer;

    .line 54
    iget-object v1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    if-eq v0, v1, :cond_1

    .line 55
    iget-boolean v1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->lockOther:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/billy/android/swipe/SwipeConsumer;->isAllDirectionsLocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/billy/android/swipe/SwipeConsumer;->lockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    .line 58
    :cond_2
    invoke-virtual {v0, p2}, Lcom/billy/android/swipe/SwipeConsumer;->close(Z)Lcom/billy/android/swipe/SwipeConsumer;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public markNoCurrent()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    if-eqz v0, :cond_0

    .line 32
    iget-boolean v1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->smooth:Z

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SwipeConsumer;->close(Z)Lcom/billy/android/swipe/SwipeConsumer;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->curSwipeConsumer:Lcom/billy/android/swipe/SwipeConsumer;

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->lockOther:Z

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/billy/android/swipe/SwipeConsumer;

    .line 37
    invoke-virtual {v1}, Lcom/billy/android/swipe/SwipeConsumer;->isAllDirectionsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/billy/android/swipe/SwipeConsumer;->unlockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(Lcom/billy/android/swipe/SwipeConsumer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->singleListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    invoke-virtual {p1, v0}, Lcom/billy/android/swipe/SwipeConsumer;->removeListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    :cond_0
    return-void
.end method

.method public setLockOther(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->lockOther:Z

    return-void
.end method

.method public setSmooth(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/billy/android/swipe/SwipeConsumerExclusiveGroup;->smooth:Z

    return-void
.end method
