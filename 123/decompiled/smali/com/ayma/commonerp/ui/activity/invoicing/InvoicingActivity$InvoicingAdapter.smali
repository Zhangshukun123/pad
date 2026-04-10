.class Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "InvoicingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvoicingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;",
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

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean;",
            ">;)V"
        }
    .end annotation

    .line 439
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->list:Ljava/util/List;

    return-void
.end method

.method private judgeInvoicingState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const-string p1, "\u672a\u77e5\u72b6\u6001"

    return-object p1

    :cond_1
    const-string p1, "\u5f00\u7968\u5931\u8d25"

    return-object p1

    :cond_2
    const-string p1, "\u5f00\u7968\u4e2d"

    return-object p1

    :cond_3
    const-string p1, "\u5f00\u7968\u6210\u529f"

    return-object p1

    :cond_4
    const-string p1, "\u672a\u5f00\u7968"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDetailView(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;",
            ">;)V"
        }
    .end annotation

    .line 553
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 555
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 556
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_0

    .line 557
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 561
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 563
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v0, 0x0

    .line 566
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 567
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;

    .line 570
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 571
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    goto :goto_3

    .line 573
    :cond_4
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0b007e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 574
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    const v4, 0x7f080449

    .line 576
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f08044a

    .line 577
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f08044b

    .line 578
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceReal()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f08044c

    .line 579
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getQty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080448

    .line 580
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/OrderBean$OrderDetailedBean;->getSalePriceSum()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    new-instance v1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$4;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v1, v3, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->setTableBackground(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->list:Ljava/util/List;

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

    .line 436
    check-cast p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;I)V
    .locals 12

    .line 451
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ayma/commonerp/bean/OrderBean;

    .line 452
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderCode()Ljava/lang/String;

    move-result-object v3

    .line 454
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderCode:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const-string v4, "%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderDate()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderTotalPrice()D

    move-result-wide v7

    .line 457
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5}, Lcom/ayma/base/util/MoneyUtils;->toMoneyStrWithout$(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const-string v5, "%s\u5143"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getInvoiceState()Ljava/lang/String;

    move-result-object p2

    .line 459
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderInvoiceState:Landroid/widget/TextView;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->judgeInvoicingState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderPayChannel:Landroid/widget/TextView;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getPayChannelName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->is12306()Z

    move-result v0

    const/16 v5, 0x8

    const/4 v9, 0x2

    if-eqz v0, :cond_6

    .line 464
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getCoachNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getSeatNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvSeat:Landroid/widget/TextView;

    const-string v10, "\u65e0\u5ea7\u4f4d\u4fe1\u606f"

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getCoachNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvSeat:Landroid/widget/TextView;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getSeatNo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "\u65e0\u8f66\u53a2\u4fe1\u606f-%s\u5ea7"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getSeatNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvSeat:Landroid/widget/TextView;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getCoachNo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "%s\u53f7\u8f66\u53a2-\u65e0\u5ea7\u4f4d\u4fe1\u606f"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvSeat:Landroid/widget/TextView;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getCoachNo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getSeatNo()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    const-string v11, "%s\u53f7\u8f66\u53a2-%s\u5ea7"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :goto_0
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContacts()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContactsPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvContacts:Landroid/widget/TextView;

    const-string v4, "\u65e0\u8054\u7cfb\u4fe1\u606f"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContacts()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvContacts:Landroid/widget/TextView;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContactsPhone()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 477
    :cond_4
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContactsPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvContacts:Landroid/widget/TextView;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContacts()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ayma/commonerp/util/UserUtil;->dealUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 480
    :cond_5
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvContacts:Landroid/widget/TextView;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContacts()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ayma/commonerp/util/UserUtil;->dealUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v2

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getContactsPhone()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v1

    const-string v10, "%s\u3000%s"

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :goto_1
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->cl12306:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_2

    .line 484
    :cond_6
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->cl12306:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_2
    const/4 v0, -0x1

    .line 486
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v10, 0x3

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v4, "3"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v0, 0x3

    goto :goto_3

    :pswitch_1
    const-string v4, "2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v0, 0x2

    goto :goto_3

    :pswitch_2
    const-string v4, "1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :pswitch_3
    const-string v4, "0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :cond_7
    :goto_3
    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_a

    if-eq v0, v9, :cond_9

    if-eq v0, v10, :cond_8

    .line 500
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderInvoiceState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 497
    :cond_8
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderInvoiceState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 494
    :cond_9
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderInvoiceState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 491
    :cond_a
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderInvoiceState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 488
    :cond_b
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvOrderInvoiceState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    :goto_4
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvInvoicing:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->canInvoice()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 504
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->getOrderDetailed()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_c

    .line 506
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    :cond_c
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->llTable:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->addDetailView(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 509
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvInvoicing:Landroid/widget/TextView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$1;

    invoke-direct {v0, p0, v3}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->isCashPay()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/OrderBean;->is12306()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_5

    .line 522
    :cond_d
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$2;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;Ljava/lang/String;DLcom/ayma/commonerp/bean/OrderBean;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 519
    :cond_e
    :goto_5
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    :goto_6
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$3;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$3;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;
    .locals 3

    .line 446
    new-instance p2, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity$InvoicingAdapter;Landroid/view/View;)V

    return-object p2
.end method
