.class Lcom/billy/android/swipe/SmartSwipeRefresh$1;
.super Lcom/billy/android/swipe/listener/SimpleSwipeListener;
.source "SmartSwipeRefresh.java"


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

    .line 205
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-direct {p0}, Lcom/billy/android/swipe/listener/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeClosed(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 249
    invoke-virtual {p2}, Lcom/billy/android/swipe/SwipeConsumer;->unlockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    .line 250
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    invoke-interface {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;->onReset()V

    .line 252
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$002(Lcom/billy/android/swipe/SmartSwipeRefresh;Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    :cond_0
    return-void
.end method

.method public onSwipeOpened(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$300(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

    move-result-object p1

    if-nez p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->finished(Z)Lcom/billy/android/swipe/SmartSwipeRefresh;

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    iget-object p3, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p3}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$100(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    move-result-object p3

    if-ne p1, p3, :cond_1

    .line 233
    invoke-virtual {p2}, Lcom/billy/android/swipe/SwipeConsumer;->lockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    .line 234
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    invoke-interface {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;->onDataLoading()V

    .line 235
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$300(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-interface {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;->onRefresh(Lcom/billy/android/swipe/SmartSwipeRefresh;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    iget-object p3, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p3}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$200(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    move-result-object p3

    if-ne p1, p3, :cond_3

    .line 237
    invoke-virtual {p2}, Lcom/billy/android/swipe/SwipeConsumer;->lockAllDirections()Lcom/billy/android/swipe/SwipeConsumer;

    .line 238
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    invoke-interface {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;->onDataLoading()V

    .line 239
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$400(Lcom/billy/android/swipe/SmartSwipeRefresh;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->finished(Z)Lcom/billy/android/swipe/SmartSwipeRefresh;

    goto :goto_0

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$300(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-interface {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshDataLoader;->onLoadMore(Lcom/billy/android/swipe/SmartSwipeRefresh;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSwipeProcess(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;IZF)V
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    xor-int/lit8 p2, p4, 0x1

    invoke-interface {p1, p2, p5}, Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;->onProgress(ZF)V

    :cond_0
    return-void
.end method

.method public onSwipeStart(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$002(Lcom/billy/android/swipe/SmartSwipeRefresh;Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/16 p1, 0x8

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$200(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshFooter;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$002(Lcom/billy/android/swipe/SmartSwipeRefresh;Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    goto :goto_0

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$100(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$SmartSwipeRefreshHeader;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$002(Lcom/billy/android/swipe/SmartSwipeRefresh;Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 221
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeRefresh$1;->this$0:Lcom/billy/android/swipe/SmartSwipeRefresh;

    invoke-static {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh;->access$000(Lcom/billy/android/swipe/SmartSwipeRefresh;)Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;

    move-result-object p1

    invoke-interface {p1}, Lcom/billy/android/swipe/SmartSwipeRefresh$RefreshView;->onStartDragging()V

    :cond_2
    return-void
.end method
