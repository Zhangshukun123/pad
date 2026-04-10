.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "Sell12306Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sale12306Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelectedOrderCount()I
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 287
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSelectedOrderGoodsCount()I
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 297
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getOrderDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;

    .line 299
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/sale12306/OrderDetail;->getQty()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 218
    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;I)V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/sale12306/OrderHead;

    .line 234
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getLineOrderNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getOrderDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOldNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getOldLineOrderNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvServiceDay:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getServiceDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvOrderAmount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getTotalAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->tvCustomerTrain:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getTrainCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getStartTrainDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "%s(\u59cb\u53d1\u65e5\u671f\uff1a%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isCommitted()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 243
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 244
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v1, 0x7f0c0008

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f070069

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 250
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isSelect()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 252
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f070080

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    .line 253
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v1, 0x7f0c001a

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;Lcom/ayma/commonerp/bean/sale12306/OrderHead;Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->rvDetail:Lcom/ayma/commonerp/widget/MaxRecyclerView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/widget/MaxRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_1

    .line 269
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {p2, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    .line 270
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->rvDetail:Lcom/ayma/commonerp/widget/MaxRecyclerView;

    invoke-virtual {v1, p2}, Lcom/ayma/commonerp/widget/MaxRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 271
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->rvDetail:Lcom/ayma/commonerp/widget/MaxRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    iget-object v3, v3, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->context:Landroid/content/Context;

    invoke-direct {v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/widget/MaxRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 273
    :cond_1
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;->rvDetail:Lcom/ayma/commonerp/widget/MaxRecyclerView;

    invoke-virtual {p1}, Lcom/ayma/commonerp/widget/MaxRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;

    .line 275
    :goto_1
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->isCommitted()Z

    move-result p1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getOrderDetails()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/sale12306/OrderHead;->getOrderDetails()Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, p1, v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;->setNewData(ZLjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;
    .locals 3

    .line 228
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;Landroid/view/View;)V

    return-object p2
.end method
