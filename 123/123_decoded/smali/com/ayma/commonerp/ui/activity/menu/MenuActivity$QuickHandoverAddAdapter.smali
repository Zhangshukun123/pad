.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickHandoverAddAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    .line 1625
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1626
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->list:Ljava/util/List;

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

    .line 1622
    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;I)V
    .locals 3

    .line 1637
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    .line 1638
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->tvPosition:Landroid/widget/TextView;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->tvCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->tvBirthday:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getBirthDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->tvSaleQty:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getQty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getOptionQty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;Lcom/ayma/commonerp/bean/ReceiptJsonBean;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1654
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;Lcom/ayma/commonerp/bean/ReceiptJsonBean;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1675
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getTableBackground(I)I

    move-result p2

    .line 1676
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getQty()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getOptionQty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const p2, 0x7f070072

    .line 1679
    :cond_0
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1622
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;
    .locals 3

    .line 1632
    new-instance p2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAddAdapter;Landroid/view/View;)V

    return-object p2
.end method
