.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryWarehouseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryWarehouseAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/WearhouseDataBean;",
            ">;)V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->list:Ljava/util/List;

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

    .line 251
    check-cast p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;I)V
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    .line 267
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 272
    :goto_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getQty()D

    move-result-wide v1

    .line 275
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    .line 278
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSalesPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f050021

    const-string v3, "\u5f02\u5e38"

    const v4, 0x7f0501d1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object v5, v5, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object v5, v5, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSalesPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSumMoney()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTotalPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTotalPrice:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object v3, v3, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 291
    :cond_3
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTotalPrice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->context:Landroid/content/Context;

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTotalPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getSumMoney()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v1, 0x0

    if-nez p2, :cond_4

    .line 295
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 298
    :cond_4
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->list:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/WearhouseDataBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 299
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/WearhouseDataBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 302
    :cond_5
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :goto_3
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;Lcom/ayma/commonerp/bean/WearhouseDataBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;
    .locals 3

    .line 261
    new-instance p2, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;Landroid/view/View;)V

    return-object p2
.end method
