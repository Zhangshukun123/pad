.class public abstract Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReceiptAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;",
            "TT;I)V"
        }
    .end annotation

    .line 40
    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_0

    .line 41
    iget-object p1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const p2, 0x7f070076

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const p2, 0x7f070077

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->setItemCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->bindData(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;
    .locals 3

    .line 53
    new-instance p2, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeDataByPosition(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->notifyItemRemoved(I)V

    .line 72
    iget-object v0, p0, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->notifyItemRangeChanged(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract setItemCount()I
.end method
