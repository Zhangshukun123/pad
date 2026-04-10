.class Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;
.super Landroid/database/Observable;
.source "FlexTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chockqiu/libflextags/view/FlexTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterDataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chockqiu/libflextags/view/FlexTags$1;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;

    invoke-virtual {v1}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;->onChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
