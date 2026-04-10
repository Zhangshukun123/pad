.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OffSiteAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectGoodsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;",
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

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellSelectGoodsBean;",
            ">;)V"
        }
    .end annotation

    .line 630
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 631
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$OffSiteAddActivity$SelectGoodsAdapter(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Landroid/view/View;)V
    .locals 1

    .line 656
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->etCount:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddPresenter;->addGoods(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 658
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$500(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 627
    check-cast p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;I)V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;

    .line 643
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->getGoodsBean()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v0

    .line 644
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvCompanyName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellSelectGoodsBean;->getCompanyName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 648
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 652
    :cond_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v2, v2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const v3, 0x7f0501d1

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getSalesPrice()D

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 649
    :cond_2
    :goto_1
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    const-string v1, "\u5f02\u5e38"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->context:Landroid/content/Context;

    const v2, 0x7f050021

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :goto_2
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$SelectGoodsAdapter$WUxDApAq9l0MUhjoetjVVRw3g6o;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/-$$Lambda$OffSiteAddActivity$SelectGoodsAdapter$WUxDApAq9l0MUhjoetjVVRw3g6o;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 627
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;
    .locals 3

    .line 637
    new-instance p2, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$SelectGoodsAdapter;Landroid/view/View;)V

    return-object p2
.end method
