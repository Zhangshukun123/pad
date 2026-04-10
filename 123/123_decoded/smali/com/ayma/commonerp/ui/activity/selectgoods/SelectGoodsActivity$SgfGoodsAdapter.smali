.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SgfGoodsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private lastSearchPosition:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 545
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, -0x1

    .line 543
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->lastSearchPosition:I

    .line 546
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearLastSearch()V
    .locals 2

    .line 686
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->lastSearchPosition:I

    const/4 v1, -0x1

    .line 687
    iput v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->lastSearchPosition:I

    .line 688
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTypeFirstPosition(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 552
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public notifyListItemChange(I)V
    .locals 4

    .line 560
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 563
    :cond_0
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->lastSearchPosition:I

    .line 564
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->lastSearchPosition:I

    .line 565
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->notifyItemChanged(I)V

    .line 566
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 541
    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;I)V
    .locals 13

    .line 585
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SellDetailBean;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez p2, :cond_2

    .line 587
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 592
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$300(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->setItem(Ljava/lang/String;)V

    goto :goto_1

    .line 588
    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 596
    :cond_2
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getStockCount()D

    move-result-wide v3

    .line 599
    iget v5, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->lastSearchPosition:I

    const-wide/16 v6, 0x0

    if-ne p2, v5, :cond_4

    .line 600
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f070072

    invoke-virtual {p2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 603
    :cond_4
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->rlContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    cmpl-double v5, v3, v6

    if-lez v5, :cond_5

    const v5, 0x7f070068

    goto :goto_2

    :cond_5
    const v5, 0x7f070069

    :goto_2
    invoke-virtual {p2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 605
    :goto_3
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSmallTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v8

    .line 607
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    invoke-static {v8, v9}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "\uffe5%s"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvStockCount:Landroid/widget/TextView;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v2

    const-string v10, "\u5f53\u524d\u5e93\u5b58\uff1a%s"

    invoke-static {v10, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvStockCount:Landroid/widget/TextView;

    cmpl-double v5, v3, v6

    iget-object v10, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v10}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-lez v5, :cond_6

    const v11, 0x7f0500ed

    goto :goto_4

    :cond_6
    const v11, 0x7f0501a1

    :goto_4
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f05003a

    if-nez v5, :cond_7

    .line 615
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    const v3, 0x7f0c0021

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_7
    cmpg-double v5, v3, v6

    if-gez v5, :cond_8

    .line 619
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    const v1, 0x7f0c001d

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 623
    :cond_8
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivStockStatue:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    :goto_5
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivAdd:Landroid/widget/ImageView;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$2;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;DLcom/ayma/commonerp/bean/SellDetailBean;)V

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->ivReduce:Landroid/widget/ImageView;

    new-instance v7, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$3;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$3;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;DLcom/ayma/commonerp/bean/SellDetailBean;)V

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$4;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;Lcom/ayma/commonerp/bean/SellDetailBean;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;
    .locals 3

    .line 580
    new-instance p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;Landroid/view/View;)V

    return-object p2
.end method
