.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SCOrderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCOrderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SCOrderBean;",
            ">;)V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNewData(Lcom/ayma/commonerp/bean/SCOrderBean;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 311
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->notifyItemInserted(I)V

    .line 312
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

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

    .line 203
    check-cast p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;I)V
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SCOrderBean;

    .line 219
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getReceiptAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvCustomerNum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getContactsPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvOrderNum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getLineOrderNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvOrderTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getOrderDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvGetFoodCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getTakeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    iget-object v3, v3, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 227
    :cond_0
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->rvDetail:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$OrderGoodsDetailAdapter;->addNewData(Ljava/util/List;)V

    .line 232
    :goto_0
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getType()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070067

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;Lcom/ayma/commonerp/bean/SCOrderBean;Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$2;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;Lcom/ayma/commonerp/bean/SCOrderBean;Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_3

    .line 271
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    const-string v0, "\u5df2\u5b8c\u6210"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 277
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    const-string v0, "\u5df2\u9000\u6b3e"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvRefund:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->tvStatue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;
    .locals 3

    .line 213
    new-instance p2, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeDataByPosition(II)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SCOrderBean;

    .line 293
    invoke-virtual {v0, p2}, Lcom/ayma/commonerp/bean/SCOrderBean;->setType(I)V

    .line 295
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->notifyItemRemoved(I)V

    .line 298
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->notifyItemRangeChanged(II)V

    if-nez p2, :cond_0

    .line 300
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment$SCOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/ayma/commonerp/eventbus/CounterOrderEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
