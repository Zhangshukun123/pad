.class public Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "QuerySellDetailActivity$SellDetailAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08073b

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080744

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08073f

    const-string v2, "field \'tvGoodsCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080746

    const-string v2, "field \'tvGoodsPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08074f

    const-string v2, "field \'tvGoodsTotalMoney\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsTotalMoney:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080781

    const-string v2, "field \'tvSellType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvSellType:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080773

    const-string v2, "field \'tvPayType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvPayType:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080780

    const-string v2, "field \'tvSellTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvSellTime:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080770

    const-string v2, "field \'tvOrderType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvOrderType:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvGoodsTotalMoney:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvSellType:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvPayType:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvSellTime:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->tvOrderType:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
