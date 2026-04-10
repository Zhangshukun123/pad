.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Sell12306Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sell12306DetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private committed:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 344
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->list:Ljava/util/List;

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

    .line 343
    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;I)V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;

    .line 363
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getQty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getSalePriceReal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getSalePriceSum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-boolean v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->committed:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const p2, 0x7f070077

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->setTableBackground(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;
    .locals 3

    .line 357
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setNewData(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderDetail;",
            ">;)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->committed:Z

    .line 351
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->notifyDataSetChanged()V

    return-void
.end method
