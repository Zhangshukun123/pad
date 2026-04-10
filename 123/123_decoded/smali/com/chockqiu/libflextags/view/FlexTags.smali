.class public Lcom/chockqiu/libflextags/view/FlexTags;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "FlexTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;,
        Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;,
        Lcom/chockqiu/libflextags/view/FlexTags$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

.field private final mAdapterDataObserver:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/chockqiu/libflextags/view/FlexTags$1;

    invoke-direct {p1, p0}, Lcom/chockqiu/libflextags/view/FlexTags$1;-><init>(Lcom/chockqiu/libflextags/view/FlexTags;)V

    iput-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapterDataObserver:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lcom/chockqiu/libflextags/view/FlexTags$1;

    invoke-direct {p1, p0}, Lcom/chockqiu/libflextags/view/FlexTags$1;-><init>(Lcom/chockqiu/libflextags/view/FlexTags;)V

    iput-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapterDataObserver:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lcom/chockqiu/libflextags/view/FlexTags$1;

    invoke-direct {p1, p0}, Lcom/chockqiu/libflextags/view/FlexTags$1;-><init>(Lcom/chockqiu/libflextags/view/FlexTags;)V

    iput-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapterDataObserver:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/chockqiu/libflextags/view/FlexTags;)Lcom/chockqiu/libflextags/view/FlexTags$Adapter;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lcom/chockqiu/libflextags/view/FlexTags$Adapter;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    return-object v0
.end method

.method public setAdapter(Lcom/chockqiu/libflextags/view/FlexTags$Adapter;)V
    .locals 1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    if-eqz p1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->access$200(Lcom/chockqiu/libflextags/view/FlexTags$Adapter;)Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->unregisterAll()V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/chockqiu/libflextags/view/FlexTags;->removeAllViews()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    if-ne v0, p1, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->notifyDataSetChanged()V

    return-void

    .line 62
    :cond_2
    iput-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    .line 63
    invoke-static {p1}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->access$200(Lcom/chockqiu/libflextags/view/FlexTags$Adapter;)Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    move-result-object p1

    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapterDataObserver:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;

    invoke-virtual {p1, v0}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags;->mAdapter:Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    invoke-virtual {p1}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
