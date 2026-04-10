.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockQueryReceiptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StockQueryReceiptAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/StockReceiptBean;",
            ">;)V"
        }
    .end annotation

    .line 538
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 539
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->list:Ljava/util/List;

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

    .line 535
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;I)V
    .locals 7

    .line 550
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/StockReceiptBean;

    .line 551
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvReceptCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getBillNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvGoDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getOutDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvTrainNo:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE_MAP_2:Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getPostMark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\u672a\u77e5"

    if-eqz v2, :cond_0

    move-object v0, v3

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE_MAP_2:Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getBillType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 557
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStoreType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStoreType()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 563
    :cond_3
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStoreType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStore()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 566
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStore()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getReceiptStoreType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "%s-%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 568
    :goto_1
    iget-object v4, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvReceiptStore:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getToTrainName()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    .line 571
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->llToTrain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvToTrain:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvToTrainDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 575
    :cond_5
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->llToTrain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvToTrain:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getTrainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvToTrainDate:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getToOutDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :goto_2
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/StockReceiptBean;->getPostMark()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_7

    const/16 v6, 0x31

    if-eq v5, v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    :cond_8
    :goto_3
    if-eqz v2, :cond_a

    if-eq v2, v1, :cond_9

    .line 593
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvRevoke:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 587
    :cond_9
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvRevoke:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f0501a0

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 581
    :cond_a
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvCommit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvRevoke:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f0500f1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    :goto_4
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvCommit:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;Lcom/ayma/commonerp/bean/StockReceiptBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvRevoke:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;Lcom/ayma/commonerp/bean/StockReceiptBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;Lcom/ayma/commonerp/bean/StockReceiptBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;Lcom/ayma/commonerp/bean/StockReceiptBean;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;
    .locals 3

    .line 545
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeDateItem(I)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    const-string v0, "\u6570\u636e\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u67e5\u8be2"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->showTipsOnTop(Ljava/lang/String;)V

    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 655
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->notifyItemRemoved(I)V

    .line 656
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$StockQueryReceiptAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
