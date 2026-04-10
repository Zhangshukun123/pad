.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GoodsOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoodsOptionSmallTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectItem:I

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    .line 343
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelectItem()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$GoodsOptionActivity$GoodsOptionSmallTypeAdapter(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 386
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    .line 387
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$000(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 388
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$000(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->getTypeFirstPosition(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 392
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 393
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 395
    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 337
    check-cast p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;I)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    if-ne p2, v2, :cond_0

    const p2, 0x7f070077

    goto :goto_0

    :cond_0
    const p2, 0x7f070076

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 385
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/goodsoption/-$$Lambda$GoodsOptionActivity$GoodsOptionSmallTypeAdapter$4QrrrJcPe0DTCLeYDqXWbOPpJJA;

    invoke-direct {v1, p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/-$$Lambda$GoodsOptionActivity$GoodsOptionSmallTypeAdapter$4QrrrJcPe0DTCLeYDqXWbOPpJJA;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;
    .locals 3

    .line 377
    new-instance p2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 2

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 362
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    iget v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    if-eq v1, v0, :cond_2

    .line 367
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    .line 368
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setSelectItem(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 352
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->selectItem:I

    .line 353
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
