.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OnlineRefundSimpleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field selectList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->list:Ljava/util/List;

    .line 321
    iput-object p3, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->selectList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->list:Ljava/util/List;

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

    .line 314
    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;I)V
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;

    .line 333
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getQty()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getSalePriceReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%s\u5143"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->tvGoodsSubtotal:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/QueryReturnOrderDetailBean$OrderDetailsBean;->getSalePriceSum()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->selectList:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->selectList:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;
    .locals 3

    .line 327
    new-instance p2, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$OrderDetailAdapter;Landroid/view/View;)V

    return-object p2
.end method
