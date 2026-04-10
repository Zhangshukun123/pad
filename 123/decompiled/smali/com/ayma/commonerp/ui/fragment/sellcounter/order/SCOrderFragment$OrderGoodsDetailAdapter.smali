.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SCOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderGoodsDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;",
            ">;)V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNewData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;",
            ">;)V"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 342
    check-cast p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;I)V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;

    .line 358
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->tvGoods:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->getQty()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s x%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean$ListDTO;->getSalePriceSum()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;
    .locals 3

    .line 352
    new-instance p2, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method
