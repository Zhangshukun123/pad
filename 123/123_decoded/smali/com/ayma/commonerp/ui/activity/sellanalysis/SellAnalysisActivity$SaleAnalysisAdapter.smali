.class Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SellAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaleAnalysisAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleAnalysisBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SaleAnalysisBean;",
            ">;)V"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->list:Ljava/util/List;

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

    .line 365
    check-cast p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;I)V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/SaleAnalysisBean;

    .line 381
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 382
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 386
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getGoodsName()Ljava/lang/String;

    move-result-object p2

    .line 388
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getFieldOutQty()D

    move-result-wide v1

    .line 390
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsAdd:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamHandoverQty()D

    move-result-wide v1

    .line 392
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsIn:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getOutQty()D

    move-result-wide v1

    .line 394
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsOutStock:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getReturnTeamQty()D

    move-result-wide v1

    .line 397
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsReturn:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getScrapTeamQty()D

    move-result-wide v1

    .line 399
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsScrap:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getLostTeamQty()D

    move-result-wide v1

    .line 401
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsLost:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getSaleDataQty()D

    move-result-wide v1

    .line 403
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsGoodsSale:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getSaleDataQty12306()D

    move-result-wide v1

    .line 405
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsSale12306:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamHandoverToQty()D

    move-result-wide v1

    .line 407
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsOut:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->getTeamNumberQty()D

    move-result-wide v1

    .line 410
    iget-object v3, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsTranStock:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SaleAnalysisBean;->isCorrect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070075

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 416
    :cond_1
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$2;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;Lcom/ayma/commonerp/bean/SaleAnalysisBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;
    .locals 3

    .line 375
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/sellanalysis/SellAnalysisActivity$SaleAnalysisAdapter;Landroid/view/View;)V

    return-object p2
.end method
