.class public abstract Lcom/chockqiu/libflextags/view/FlexTags$Adapter;
.super Ljava/lang/Object;
.source "FlexTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chockqiu/libflextags/view/FlexTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field private final mAdapterDataObservable:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;-><init>(Lcom/chockqiu/libflextags/view/FlexTags$1;)V

    iput-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->mAdapterDataObservable:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    return-void
.end method

.method static synthetic access$200(Lcom/chockqiu/libflextags/view/FlexTags$Adapter;)Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->mAdapterDataObservable:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    return-object p0
.end method


# virtual methods
.method public abstract getItemCount()I
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->mAdapterDataObservable:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->hasObservers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->mAdapterDataObservable:Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public abstract onBindView(Landroid/view/View;I)V
.end method

.method public abstract onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method
