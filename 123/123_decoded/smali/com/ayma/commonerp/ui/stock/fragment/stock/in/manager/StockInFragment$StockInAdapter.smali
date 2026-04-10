.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StockInAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;",
            ">;)V"
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->list:Ljava/util/List;

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

    .line 513
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;I)V
    .locals 6

    .line 537
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;

    .line 538
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getCreateDate()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-static {v0}, Lcom/ayma/base/util/DateTimeUtils;->formatDateToyyyyMMddHHmmssSSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_0
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getBillNo()Ljava/lang/String;

    move-result-object v1

    .line 543
    iget-object v2, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvReceiptNo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v2, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvReceiptTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvOperator:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getCreateShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;)V

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getLastModifyDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditTimeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 569
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditOperator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 571
    :cond_1
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditTimeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditOperator:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditOperator:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getLastModifyUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvEditTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getLastModifyDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ayma/base/util/DateTimeUtils;->formatDateToyyyyMMddHHmmssSSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :goto_0
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->isUpload()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->isCommit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v5, 0x7f0c0008

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostTimeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostOperator:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostOperator:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;->getPostDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ayma/base/util/DateTimeUtils;->formatDateToyyyyMMddHHmmssSSS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 590
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;

    invoke-direct {v0, p0, v1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 608
    :cond_2
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostTimeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->tvPostOperator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 614
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v2, 0x7f0c0019

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 617
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$3;

    invoke-direct {v0, p0, v1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 638
    :cond_3
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v5, 0x7f0c001b

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 639
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 640
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 642
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 644
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$4;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;
    .locals 3

    .line 532
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(I)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 525
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->notifyItemRemoved(I)V

    .line 526
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment$StockInAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
