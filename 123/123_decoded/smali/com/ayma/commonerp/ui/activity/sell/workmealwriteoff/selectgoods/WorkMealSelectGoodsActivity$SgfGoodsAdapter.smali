.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WorkMealSelectGoodsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SgfGoodsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;",
            ">;)V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;I)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->updateSelectItem(I)V

    return-void
.end method

.method private updateSelectItem(I)V
    .locals 4

    .line 357
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v3, :cond_3

    .line 368
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSelect(Z)V

    .line 369
    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->notifyItemChanged(I)V

    .line 371
    :cond_3
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    if-eq v1, p1, :cond_4

    const/4 v0, 0x1

    .line 372
    :cond_4
    invoke-virtual {v2, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSelect(Z)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->notifyItemChanged(I)V

    .line 374
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;

    invoke-virtual {p1, v2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->showSelectGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTypeFirstPosition(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 305
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 295
    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;I)V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    const/4 v1, 0x0

    if-lez p2, :cond_2

    .line 322
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->list:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->access$000(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 327
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->access$000(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;)Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$TypeAdapter;->setItem(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 331
    :cond_2
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsSmallTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isSelect()Z

    move-result p2

    .line 336
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 337
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 295
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;
    .locals 3

    .line 315
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity$SgfGoodsAdapter;Landroid/view/View;)V

    return-object p2
.end method
