.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QuerySellDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field root:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

.field tvGoodsCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08073b
    .end annotation
.end field

.field tvGoodsCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08073f
    .end annotation
.end field

.field tvGoodsName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080744
    .end annotation
.end field

.field tvGoodsPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080746
    .end annotation
.end field

.field tvGoodsTotalMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08074f
    .end annotation
.end field

.field tvOrderType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080770
    .end annotation
.end field

.field tvPayType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080773
    .end annotation
.end field

.field tvSellTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080780
    .end annotation
.end field

.field tvSellType:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080781
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;Landroid/view/View;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$SellDetailAdapter;

    .line 516
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 517
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
