.class Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockQueryReceiptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectTrainMembersAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TrainMemberBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

.field private final trainItem:Lcom/ayma/commonerp/bean/StockTrainItem;

.field private tvTakeOffDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;Lcom/ayma/commonerp/bean/StockTrainItem;Ljava/util/List;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ayma/commonerp/bean/StockTrainItem;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TrainMemberBean;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .line 766
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 767
    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->list:Ljava/util/List;

    .line 768
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->trainItem:Lcom/ayma/commonerp/bean/StockTrainItem;

    .line 769
    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->tvTakeOffDate:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$300(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->tvTakeOffDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;)Lcom/ayma/commonerp/bean/StockTrainItem;
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->trainItem:Lcom/ayma/commonerp/bean/StockTrainItem;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->list:Ljava/util/List;

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

    .line 761
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;I)V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/TrainMemberBean;

    .line 781
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 782
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBackgroundResource(I)V

    goto :goto_0

    .line 784
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBackgroundResource(I)V

    .line 786
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->tvTrainNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TrainMemberBean;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->tvMemberName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TrainMemberBean;->getEmployeeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->tvRoadDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TrainMemberBean;->getOutDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object p2, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->tvRoadStatue:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TrainMemberBean;->isSignOut()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5df2\u9000\u4e58"

    goto :goto_1

    :cond_1
    const-string v1, "\u672a\u9000\u4e58"

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;Lcom/ayma/commonerp/bean/TrainMemberBean;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 761
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;
    .locals 3

    .line 775
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/receipt/queryreceipt/StockQueryReceiptFragment$SelectTrainMembersAdapter;Landroid/view/View;)V

    return-object p2
.end method
