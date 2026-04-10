.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectItem:I

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;",
            ">;)V"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x0

    .line 454
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    .line 457
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->list:Ljava/util/List;

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

    .line 461
    iget v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$SelectGoodsActivity$TypeAdapter(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;Landroid/view/View;)V
    .locals 0

    .line 502
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    .line 503
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->access$100(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$SgfGoodsAdapter;->getTypeFirstPosition(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 510
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 512
    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 452
    check-cast p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;I)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 498
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    iget v2, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    if-ne p2, v2, :cond_0

    const p2, 0x7f070082

    goto :goto_0

    :cond_0
    const p2, 0x106000d

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 500
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/selectgoods/-$$Lambda$SelectGoodsActivity$TypeAdapter$hxyKfpeyfQZoyrJLtt6U9XmZbpQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/-$$Lambda$SelectGoodsActivity$TypeAdapter$hxyKfpeyfQZoyrJLtt6U9XmZbpQ;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;)V

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 452
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;
    .locals 3

    .line 492
    new-instance p2, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItem(Ljava/lang/String;)V
    .locals 3

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 476
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 477
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 480
    :cond_1
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    iget v1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    if-eq v1, v0, :cond_2

    .line 482
    iput v0, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    .line 483
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->notifyDataSetChanged()V

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

    .line 466
    iput p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->selectItem:I

    .line 467
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$TypeAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
