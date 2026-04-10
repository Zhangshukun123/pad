.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickHandoverAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuickHandoverBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V
    .locals 0

    .line 1555
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1556
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData(Lcom/ayma/commonerp/bean/QuickHandoverBean;)V
    .locals 2

    .line 1571
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1575
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->notifyItemInserted(I)V

    .line 1576
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1566
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1567
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1606
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

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

    .line 1552
    check-cast p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;I)V
    .locals 2

    .line 1581
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/QuickHandoverBean;

    .line 1582
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;->tvMsg:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QuickHandoverBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QuickHandoverBean;->getStatue()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const p2, 0x7f0c002b

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0009

    goto :goto_0

    :cond_1
    const p2, 0x7f0c000c

    goto :goto_0

    :cond_2
    const p2, 0x7f0c002d

    goto :goto_0

    :cond_3
    const p2, 0x7f0c000a

    .line 1601
    :goto_0
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;
    .locals 3

    .line 1562
    new-instance p2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$QuickHandoverAdapter;Landroid/view/View;)V

    return-object p2
.end method
