.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StockOutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;",
            ">;)V"
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 634
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->list:Ljava/util/List;

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

    .line 630
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;I)V
    .locals 7

    .line 655
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;

    .line 656
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillNo()Ljava/lang/String;

    move-result-object v0

    .line 657
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvReceiptNo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvReceiptTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getBillDay()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyyMMdd"

    const-string v4, "yyyy-MM-dd"

    invoke-static {v2, v3, v4}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvOperator:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getCreateShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvTrain:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getTrainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvTrainDay:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getOutDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getLastModifyDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditTimeHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 684
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditOperator:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditTimeHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 690
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditOperator:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditOperator:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getLastModifyUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvEditTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getLastModifyDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v4, v5, v6}, Lcom/ayma/base/util/DateTimeUtils;->parseDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :goto_0
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->isUpload()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 696
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->isCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v5, 0x7f0c0008

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostTimeHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostOperator:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostOperator:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getPostShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;->getPostDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 706
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 708
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 723
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 725
    :cond_1
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostTimeHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostOperatorHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->tvPostOperator:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v5, 0x7f0c0019

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 731
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 732
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Ljava/lang/String;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 767
    :cond_2
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 769
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnCommit:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 771
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnRevoke:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;->btnUpload:Landroid/widget/Button;

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutHead;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 630
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;
    .locals 3

    .line 649
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(I)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 642
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->notifyItemRemoved(I)V

    .line 643
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$StockOutAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
