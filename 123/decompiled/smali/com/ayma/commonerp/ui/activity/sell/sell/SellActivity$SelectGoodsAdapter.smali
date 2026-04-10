.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SellActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectGoodsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;)V"
        }
    .end annotation

    .line 1622
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1623
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$SellActivity$SelectGoodsAdapter(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Landroid/view/View;)V
    .locals 6

    .line 1642
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p2

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etSellCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->cbUserQuitWare:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u73b0\u91d1"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->commitGoodsChange(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1644
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->access$1200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1619
    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;I)V
    .locals 6

    .line 1634
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;

    .line 1635
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->getGoodsBean()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    .line 1636
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;->tvCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1637
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;->tvCompanyName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->getCompanyName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1639
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object p2

    .line 1640
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$SelectGoodsAdapter$TBjMGFiSbFrp5zheH1TTzS2NQGQ;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1619
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;
    .locals 3

    .line 1629
    new-instance p2, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$SelectGoodsAdapter;Landroid/view/View;)V

    return-object p2
.end method
