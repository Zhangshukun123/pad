.class Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryBillActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryBillAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuerySaleBillBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QuerySaleBillBean;",
            ">;)V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 337
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->list:Ljava/util/List;

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

    .line 333
    check-cast p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;I)V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/QuerySaleBillBean;

    .line 349
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 350
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 354
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getSalePrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsFromStock:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReceiveQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsAdd:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getSupplyQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsReturn:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsScrapped:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getScrapQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsLost:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getLoseQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsSaleOut:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getForeignQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsSaleIn:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getInternalQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvGoodsSale12306:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getOnlineQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvTransferIn:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnInQty()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->tvTransferOut:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/QuerySaleBillBean;->getReturnOutQty()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$1;

    invoke-direct {p2, p0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;
    .locals 3

    .line 343
    new-instance p2, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/querybill/QueryBillActivity$QueryBillAdapter;Landroid/view/View;)V

    return-object p2
.end method
