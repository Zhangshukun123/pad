.class public Lcom/billy/android/swipe/SmartSwipeRefresh;
.super Ljava/lang/Object;
.source "SmartSwipeRefresh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;,
        Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;,
        Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;,
        Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;,
        Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;
    }
.end annotation


# static fields
.field private static mCreator:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;


# instance fields
.field private mActiveRefreshView:Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

.field private mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

.field private mDataLoader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

.field private mFooter:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

.field private mHeader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

.field private mHorizontal:Z

.field private mNoMoreData:Z

.field private mResetRunnable:Ljava/lang/Runnable;

.field private swipeListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/SmartSwipeRefresh$1;-><init>(Lcom/billy/android/swipe/SmartSwipeRefresh;)V

    iput-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->swipeListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    .line 395
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeRefresh$3;

    invoke-direct {v0, p0}, Lcom/billy/android/swipe/SmartSwipeRefresh$3;-><init>(Lcom/billy/android/swipe/SmartSwipeRefresh;)V

    iput-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mActiveRefreshView:Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/billy/android/swipe/SmartSwipeRefresh;Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mActiveRefreshView:Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHeader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mFooter:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mDataLoader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

    return-object p0
.end method

.method static synthetic access$400(Lcom/billy/android/swipe/SmartSwipeRefresh;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mNoMoreData:Z

    return p0
.end method

.method static synthetic access$500(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    return-object p0
.end method

.method public static behindMode(Landroid/view/View;Z)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->behindMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static behindMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0, p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->slideMode(Landroid/view/View;FZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/view/View;Lcom/billy/android/swipe/consumer/DrawerConsumer;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 3

    .line 175
    new-instance v0, Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-direct {v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;-><init>()V

    .line 176
    invoke-static {p0}, Lcom/billy/android/swipe/SmartSwipe;->wrap(Landroid/view/View;)Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->addConsumer(Lcom/billy/android/swipe/SwipeConsumer;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    check-cast p1, Lcom/billy/android/swipe/consumer/DrawerConsumer;

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDisableSwipeOnSettling(Z)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    iget-object v1, v0, Lcom/billy/android/swipe/SmartSwipeRefresh;->swipeListener:Lcom/billy/android/swipe/listener/SimpleSwipeListener;

    .line 181
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->addListener(Lcom/billy/android/swipe/listener/SwipeListener;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    new-instance v1, Lcom/billy/android/swipe/calculator/ScaledCalculator;

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2}, Lcom/billy/android/swipe/calculator/ScaledCalculator;-><init>(F)V

    .line 183
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->setSwipeDistanceCalculator(Lcom/billy/android/swipe/calculator/SwipeDistanceCalculator;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    const/4 v1, 0x5

    .line 185
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->setReleaseMode(I)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 187
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->setOverSwipeFactor(F)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFlyTop(Z)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    .line 190
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->enableNestedFlyLeft(Z)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    const-class v1, Lcom/billy/android/swipe/consumer/DrawerConsumer;

    .line 191
    invoke-virtual {p1, v1}, Lcom/billy/android/swipe/SwipeConsumer;->as(Ljava/lang/Class;)Lcom/billy/android/swipe/SwipeConsumer;

    move-result-object p1

    check-cast p1, Lcom/billy/android/swipe/consumer/DrawerConsumer;

    iput-object p1, v0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    .line 192
    iput-boolean p2, v0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz p3, :cond_1

    .line 194
    sget-object p1, Lcom/billy/android/swipe/SmartSwipeRefresh;->mCreator:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;->createRefreshHeader(Landroid/content/Context;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->setHeader(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;)Lcom/billy/android/swipe/SmartSwipeRefresh;

    .line 196
    sget-object p1, Lcom/billy/android/swipe/SmartSwipeRefresh;->mCreator:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;->createRefreshFooter(Landroid/content/Context;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->setFooter(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;)Lcom/billy/android/swipe/SmartSwipeRefresh;

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Lcom/billy/android/swipe/refresh/ClassicHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/billy/android/swipe/refresh/ClassicHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->setHeader(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;)Lcom/billy/android/swipe/SmartSwipeRefresh;

    .line 199
    new-instance p1, Lcom/billy/android/swipe/refresh/ClassicFooter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/billy/android/swipe/refresh/ClassicFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->setFooter(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;)Lcom/billy/android/swipe/SmartSwipeRefresh;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static drawerMode(Landroid/view/View;Z)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->drawerMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static drawerMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    .line 86
    new-instance v0, Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-direct {v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->create(Landroid/view/View;Lcom/billy/android/swipe/consumer/DrawerConsumer;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method private openDirection(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-virtual {v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->lockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    .line 298
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-virtual {v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->getWrapper()Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object v0

    new-instance v1, Lcom/billy/android/swipe/SmartSwipeRefresh$2;

    invoke-direct {v1, p0, p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$2;-><init>(Lcom/billy/android/swipe/SmartSwipeRefresh;I)V

    invoke-virtual {v0, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static scaleMode(Landroid/view/View;Z)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/4 v0, 0x1

    .line 141
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->scaleMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static scaleMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 154
    invoke-static {p0, v0, p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->slideMode(Landroid/view/View;FZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultRefreshViewCreator(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;)V
    .locals 0

    .line 63
    sput-object p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mCreator:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshViewCreator;

    return-void
.end method

.method public static slideMode(Landroid/view/View;FZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    .line 171
    new-instance v0, Lcom/billy/android/swipe/consumer/SlidingConsumer;

    invoke-direct {v0}, Lcom/billy/android/swipe/consumer/SlidingConsumer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/billy/android/swipe/consumer/SlidingConsumer;->setRelativeMoveFactor(F)Lcom/billy/android/swipe/consumer/SlidingConsumer;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/billy/android/swipe/SmartSwipeRefresh;->create(Landroid/view/View;Lcom/billy/android/swipe/consumer/DrawerConsumer;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static translateMode(Landroid/view/View;Z)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/4 v0, 0x1

    .line 118
    invoke-static {p0, p1, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->translateMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method

.method public static translateMode(Landroid/view/View;ZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    invoke-static {p0, v0, p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->slideMode(Landroid/view/View;FZZ)Lcom/billy/android/swipe/SmartSwipeRefresh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public disableLoadMore()Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-virtual {v1, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    return-object p0
.end method

.method public disableRefresh()Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 2

    .line 265
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-virtual {v1, v0}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->disableDirection(I)Lcom/billy/android/swipe/SwipeConsumer;

    return-object p0
.end method

.method public finished(Z)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mActiveRefreshView:Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHeader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->setNoMoreData(Z)Lcom/billy/android/swipe/SmartSwipeRefresh;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mActiveRefreshView:Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    invoke-interface {v0, p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;->onFinish(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-virtual {p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->getWrapper()Lcom/billy/android/swipe/SmartSwipeWrapper;

    move-result-object p1

    iget-object v2, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Lcom/billy/android/swipe/SmartSwipeWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return-object p1

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    invoke-virtual {p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->smoothClose()Lcom/billy/android/swipe/SwipeConsumer;

    return-object p0
.end method

.method public getDataLoader()Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mDataLoader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

    return-object v0
.end method

.method public getFooter()Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mFooter:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    return-object v0
.end method

.method public getHeader()Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHeader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    return-object v0
.end method

.method public getSwipeConsumer()Lcom/billy/android/swipe/consumer/DrawerConsumer;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    return-object v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    return v0
.end method

.method public isNoMoreData()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mNoMoreData:Z

    return v0
.end method

.method public setDataLoader(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mDataLoader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

    return-object p0
.end method

.method public setFooter(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 2

    .line 387
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mFooter:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    if-eqz p1, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    invoke-interface {p1, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;->onInit(Z)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    iget-boolean v1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;->getView()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    return-object p0
.end method

.method public setHeader(Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 2

    .line 369
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHeader:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    if-eqz p1, :cond_0

    .line 371
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    invoke-interface {p1, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;->onInit(Z)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mConsumer:Lcom/billy/android/swipe/consumer/DrawerConsumer;

    iget-boolean v1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;->getView()Landroid/view/View;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/billy/android/swipe/consumer/DrawerConsumer;->setDrawerView(ILandroid/view/View;)Lcom/billy/android/swipe/consumer/DrawerConsumer;

    return-object p0
.end method

.method public setNoMoreData(Z)Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    .line 352
    iput-boolean p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mNoMoreData:Z

    .line 353
    iget-object v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mFooter:Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;->setNoMoreData(Z)V

    :cond_0
    return-object p0
.end method

.method public startLoadMore()Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 292
    :goto_0
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->openDirection(I)V

    return-object p0
.end method

.method public startRefresh()Lcom/billy/android/swipe/SmartSwipeRefresh;
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/billy/android/swipe/SmartSwipeRefresh;->mHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 282
    :goto_0
    invoke-direct {p0, v0}, Lcom/billy/android/swipe/SmartSwipeRefresh;->openDirection(I)V

    return-object p0
.end method
