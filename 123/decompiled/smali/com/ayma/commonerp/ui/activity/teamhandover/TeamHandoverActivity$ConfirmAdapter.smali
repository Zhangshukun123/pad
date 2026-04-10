.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TeamHandoverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;)V"
        }
    .end annotation

    .line 755
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$TeamHandoverActivity$ConfirmAdapter(Lcom/ayma/commonerp/bean/ReceiptJsonBean;ILandroid/view/View;)V
    .locals 0

    .line 778
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->setSelected(Z)V

    .line 779
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 748
    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;I)V
    .locals 4

    .line 767
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/ReceiptJsonBean;

    .line 768
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 769
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 771
    :cond_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 773
    :goto_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->tvHandoverNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->getQty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/ReceiptJsonBean;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 777
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$ConfirmAdapter$_GrcOw5RpI8UrANVDy1cSBQTm_k;

    invoke-direct {v1, p0, v0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$ConfirmAdapter$_GrcOw5RpI8UrANVDy1cSBQTm_k;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;Lcom/ayma/commonerp/bean/ReceiptJsonBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;
    .locals 3

    .line 762
    new-instance p2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;Landroid/view/View;)V

    return-object p2
.end method
