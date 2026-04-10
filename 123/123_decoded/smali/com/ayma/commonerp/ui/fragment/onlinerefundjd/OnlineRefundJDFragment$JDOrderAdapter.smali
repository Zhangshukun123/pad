.class Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OnlineRefundJDFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JDOrderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;)V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->list:Ljava/util/List;

    return-void
.end method

.method private judgeOrderState(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "\u672a\u77e5\u72b6\u6001"

    return-object p1

    :cond_0
    const-string p1, "\u5df2\u9000\u6b3e"

    return-object p1

    :cond_1
    const-string p1, "\u6b63\u5e38"

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->list:Ljava/util/List;

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

    .line 252
    check-cast p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;I)V
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/OrderBean;

    .line 268
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u8ba2\u5355\u53f7\uff1a%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "\u65f6\u95f4\uff1a%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderTotalPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "\u91d1\u989d\uff1a%s\u5143"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderRefundState:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->judgeOrderState(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "\u8ba2\u5355\u72b6\u6001\uff1a%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderPayChannel:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getPayChannelName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "\u652f\u4ed8\u65b9\u5f0f\uff1a%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 275
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderDetailed()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 279
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;

    .line 281
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    .line 283
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getQty()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u603b\u4ef7\uff1a"

    .line 284
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceSum()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvOrderDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;

    invoke-direct {v1, p0, p2, v2, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$1;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;Lcom/ayma/commonerp/bean/OrderBean;Ljava/lang/StringBuilder;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;
    .locals 3

    .line 262
    new-instance p2, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment$JDOrderAdapter;Landroid/view/View;)V

    return-object p2
.end method
